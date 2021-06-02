
# Copyright (C) 2021 Intel Corporation
#
# SPDX-License-Identifier: MIT


import copy
import json
import os.path as osp
import os
import shutil
import random
import sys
import xml.etree.ElementTree as ET
import zipfile
from shutil import copyfile
from io import BytesIO
import av
import numpy as np
import random
import string

from datumaro.components.dataset import Dataset
from datumaro.util.test_utils import compare_datasets, TestDir
from django.contrib.auth.models import Group, User
from PIL import Image
from rest_framework import status
from rest_framework.test import APIClient, APITestCase

import cvat.apps.dataset_manager as dm
from cvat.apps.dataset_manager.bindings import CvatTaskDataExtractor, TaskData
from cvat.apps.dataset_manager.task import TaskAnnotation
from cvat.apps.dataset_manager.annotation import TrackManager
from cvat.apps.engine.models import Task

path = osp.join(osp.dirname(__file__), 'assets', 'tasks.json')
with open(path) as f:
    tasks = json.load(f)

path = osp.join(osp.dirname(__file__), 'assets', 'annotations.json')
with open(path) as f:
    annotations = json.load(f)



def generate_image_file(filename, size=(100, 50)):
    f = BytesIO()
    image = Image.new('RGB', size=size)
    image.save(f, 'jpeg')
    f.name = filename
    f.seek(0)
    return f


def generate_video_file(filename, width=1280, height=720, duration=1, fps=25, codec_name='mpeg4'):
    f = BytesIO()
    total_frames = duration * fps
    file_ext = os.path.splitext(filename)[1][1:]
    container = av.open(f, mode='w', format=file_ext)

    stream = container.add_stream(codec_name=codec_name, rate=fps)
    stream.width = width
    stream.height = height
    stream.pix_fmt = 'yuv420p'

    for frame_i in range(total_frames):
        img = np.empty((stream.width, stream.height, 3))
        img[:, :, 0] = 0.5 + 0.5 * np.sin(2 * np.pi * (0 / 3 + frame_i / total_frames))
        img[:, :, 1] = 0.5 + 0.5 * np.sin(2 * np.pi * (1 / 3 + frame_i / total_frames))
        img[:, :, 2] = 0.5 + 0.5 * np.sin(2 * np.pi * (2 / 3 + frame_i / total_frames))

        img = np.round(255 * img).astype(np.uint8)
        img = np.clip(img, 0, 255)

        frame = av.VideoFrame.from_ndarray(img, format='rgb24')
        for packet in stream.encode(frame):
            container.mux(packet)

    # Flush stream
    for packet in stream.encode():
        container.mux(packet)

    # Close the file
    container.close()
    f.name = filename
    f.seek(0)

    return [(width, height)] * total_frames, f


class ForceLogin:
    def __init__(self, user, client):
        self.user = user
        self.client = client

    def __enter__(self):
        if self.user:
            self.client.force_login(self.user,
                backend='django.contrib.auth.backends.ModelBackend')

        return self

    def __exit__(self, exception_type, exception_value, traceback):
        if self.user:
            self.client.logout()

class _DbTestBase(APITestCase):
    def setUp(self):
        self.client = APIClient()

    @classmethod
    def setUpTestData(cls):
        cls.create_db_users()

    @classmethod
    def create_db_users(cls):
        (group_admin, _) = Group.objects.get_or_create(name="admin")
        (group_user, _) = Group.objects.get_or_create(name="user")

        user_admin = User.objects.create_superuser(username="admin", email="",
            password="admin")
        user_admin.groups.add(group_admin)
        user_dummy = User.objects.create_user(username="user", password="user")
        user_dummy.groups.add(group_user)

        cls.admin = user_admin
        cls.user = user_dummy

    def _put_api_v1_task_id_annotations(self, tid, data):
        with ForceLogin(self.admin, self.client):
            response = self.client.put("/api/v1/tasks/%s/annotations" % tid,
                data=data, format="json")

        return response

    def _put_api_v1_job_id_annotations(self, jid, data):
        with ForceLogin(self.admin, self.client):
            response = self.client.put("/api/v1/jobs/%s/annotations" % jid,
                data=data, format="json")

        return response

    @staticmethod
    def _generate_task_images(count): # pylint: disable=no-self-use
        images = {"client_files[%d]" % i: generate_image_file("image_%d.jpg" % i) for i in range(count)}
        images["image_quality"] = 75
        return images

    @staticmethod
    def _generate_task_videos(count):  # pylint: disable=no-self-use
        videos = {"client_files[%d]" % i: generate_video_file("video_%d.mp4" % i) for i in range(count)}
        videos["image_quality"] = 75
        return videos

    def _create_task(self, data, image_data):
        with ForceLogin(self.user, self.client):
            response = self.client.post('/api/v1/tasks', data=data, format="json")
            assert response.status_code == status.HTTP_201_CREATED, response.status_code
            tid = response.data["id"]

            response = self.client.post("/api/v1/tasks/%s/data" % tid,
                data=image_data)
            assert response.status_code == status.HTTP_202_ACCEPTED, response.status_code

            response = self.client.get("/api/v1/tasks/%s" % tid)
            task = response.data

        return task

    def _get_jobs(self, task_id):
        with ForceLogin(self.admin, self.client):
            response = self.client.get("/api/v1/tasks/{}/jobs".format(task_id))
        return response.data

    def _get_request(self, path, user):
        with ForceLogin(user, self.client):
            response = self.client.get(path)
        return response

    def _get_request_with_data(self, path, data, user):
        with ForceLogin(user, self.client):
            response = self.client.get(path, data)
        return response

    def _delete_request(self, path, user):
        with ForceLogin(user, self.client):
            response = self.client.delete(path)
        return response

    def _create_annotations(self, task, name_ann, key_get_values):
        tmp_annotations = copy.deepcopy(annotations[name_ann])

        # change attributes in all annotations
        for item in tmp_annotations:
            if item in ["tags", "shapes", "tracks"]:
                for index_elem, _ in enumerate(tmp_annotations[item]):
                    tmp_annotations[item][index_elem]["label_id"] = task["labels"][0]["id"]

                    for index_attribute, attribute in enumerate(task["labels"][0]["attributes"]):
                        spec_id = task["labels"][0]["attributes"][index_attribute]["id"]

                        if key_get_values == "random":
                            if attribute["input_type"] == "number":
                                start = int(attribute["values"][0])
                                stop = int(attribute["values"][1]) + 1
                                step = int(attribute["values"][2])
                                value = str(random.randrange(start, stop, step))
                            else:
                                value = random.choice(task["labels"][0]["attributes"][index_attribute]["values"])
                        elif key_get_values == "default":
                            value = attribute["default_value"]

                        if item == "tracks" and attribute["mutable"]:
                            for index_shape, _ in enumerate(tmp_annotations[item][index_elem]["shapes"]):
                                tmp_annotations[item][index_elem]["shapes"][index_shape]["attributes"].append({
                                    "spec_id": spec_id,
                                    "value": value,
                                })
                        else:
                            tmp_annotations[item][index_elem]["attributes"].append({
                                "spec_id": spec_id,
                                "value": value,
                            })

        response = self._put_api_v1_task_id_annotations(task["id"], tmp_annotations)
        self.assertEqual(response.status_code, status.HTTP_200_OK)

    def _create_annotations_in_job(self, task, job_id,  name_ann, key_get_values):
        tmp_annotations = copy.deepcopy(annotations[name_ann])

        # change attributes in all annotations
        for item in tmp_annotations:
            if item in ["tags", "shapes", "tracks"]:
                for index_elem, _ in enumerate(tmp_annotations[item]):
                    tmp_annotations[item][index_elem]["label_id"] = task["labels"][0]["id"]

                    for index_attribute, attribute in enumerate(task["labels"][0]["attributes"]):
                        spec_id = task["labels"][0]["attributes"][index_attribute]["id"]

                        if key_get_values == "random":
                            if attribute["input_type"] == "number":
                                start = int(attribute["values"][0])
                                stop = int(attribute["values"][1]) + 1
                                step = int(attribute["values"][2])
                                value = str(random.randrange(start, stop, step))
                            else:
                                value = random.choice(task["labels"][0]["attributes"][index_attribute]["values"])
                        elif key_get_values == "default":
                            value = attribute["default_value"]

                        if item == "tracks" and attribute["mutable"]:
                            for index_shape, _ in enumerate(tmp_annotations[item][index_elem]["shapes"]):
                                tmp_annotations[item][index_elem]["shapes"][index_shape]["attributes"].append({
                                    "spec_id": spec_id,
                                    "value": value,
                                })
                        else:
                            tmp_annotations[item][index_elem]["attributes"].append({
                                "spec_id": spec_id,
                                "value": value,
                            })

        response = self._put_api_v1_job_id_annotations(job_id, tmp_annotations)
        self.assertEqual(response.status_code, status.HTTP_200_OK)

    def _download_file(self, url, data, user, file_name):
        for _ in range(5):
            response = self._get_request_with_data(url, data, user)
            if response.status_code == status.HTTP_200_OK:
                content = BytesIO(b"".join(response.streaming_content))
                with open(file_name, "wb") as f:
                    f.write(content.getvalue())
                break
        return response

    def _upload_file(self, url, data, user):
        with ForceLogin(user, self.client):
                response = self.client.put(url, data)
        return response

    def _check_downloaded_file(self, file_name):
        if not osp.exists(file_name):
            raise FileNotFoundError(f"File '{file_name}' was not downloaded")

    def _generate_url_dump_tasks_annotations(self, task_id):
        return f"/api/v1/tasks/{task_id}/annotations"

    def _generate_url_upload_tasks_annotations(self, task_id, upload_format_name):
        return f"/api/v1/tasks/{task_id}/annotations?format={upload_format_name}"

    def _generate_url_dump_job_annotations(self, job_id):
        return f"/api/v1/jobs/{job_id}/annotations"

    def _generate_url_upload_job_annotations(self, job_id, upload_format_name):
        return f"/api/v1/jobs/{job_id}/annotations?format={upload_format_name}"

    def _generate_url_dump_dataset(self, task_id):
        return f"/api/v1/tasks/{task_id}/dataset"

    def _remove_annotations(self, url, user):
        response = self._delete_request(url, user)
        self.assertEqual(response.status_code, status.HTTP_204_NO_CONTENT)
        return response

    def _get_data_from_task(self, task_id, include_images=False):
        task_ann = TaskAnnotation(task_id)
        task_ann.init_from_db()
        task_data = TaskData(task_ann.ir_data, Task.objects.get(pk=task_id))
        extractor = CvatTaskDataExtractor(task_data, include_images=include_images)
        data_from_task = Dataset.from_extractors(extractor)
        return data_from_task
"""
Need to write REST API tests for server (dataset manager):
 # Dump annotations with objects type is shape
 # Upload annotations with objects type is shape
 # Dump annotations with objects type is track
 # Upload annotations with objects type is track
 # Dump tag annotations
 # Dump/upload annotations with objects are different types (images)
 # Dump/upload annotations with objects are different types (video)
 # Dump/upload with objects type is track and outside property
 # Dump/upload with objects type is track and keyframe property
 # Dump/upload annotations from several jobs
 # Dump annotations with objects type is shape from several jobs
 # Dump annotations with objects type is track from several jobs
 # Export dataset
 # Wrong label in input file
 # Wrong value checkbox in input file
 # Dump annotations with attributes
 # Upload annotations with attributes
 # Dump empty frames
 # Upload empty frames
 # Rewriting annotations
 # Dump one type and upload another type
 # Unit test on to_track function
 # Unit test on normalize_shape function
 # Unit test on export_job function
"""

class TaskDumpUploadTest(_DbTestBase):

    def test_api_v1_dump_and_upload_annotations_with_objects_type_is_shape(self):
        test_name = self._testMethodName
        dump_formats = dm.views.get_export_formats()
        upload_formats = dm.views.get_import_formats()
        expected_dump = {
            None: {'name': 'none', 'code': status.HTTP_401_UNAUTHORIZED, 'file_exists': False},
            self.admin: {'name': 'admin', 'code': status.HTTP_200_OK, 'file_exists': True},
            self.user: {'name': 'user', 'code': status.HTTP_200_OK, 'file_exists': True},
        }
        expected_upload = {
            self.admin: {'name': 'admin', 'code': status.HTTP_201_CREATED, 'accept code': status.HTTP_202_ACCEPTED,
                         'annotation_loaded': True},
            self.user: {'name': 'user', 'code': status.HTTP_201_CREATED, 'accept code': status.HTTP_202_ACCEPTED,
                        'annotation_loaded': True},
            None: {'name': 'none', 'code': status.HTTP_401_UNAUTHORIZED, 'accept code': status.HTTP_401_UNAUTHORIZED,
                   'annotation_loaded': False},
        }

        with TestDir() as test_dir:
            # Dump annotations with objects type is shape
            for dump_format in dump_formats:
                if not dump_format.ENABLED:
                    continue
                dump_format_name = dump_format.DISPLAY_NAME
                with self.subTest(format=dump_format_name):
                    images = self._generate_task_images(3)
                    # create task with annotations
                    if dump_format_name == "Market-1501 1.0":
                        task = self._create_task(tasks["market1501"], images)
                    elif dump_format_name in ["ICDAR Localization 1.0", "ICDAR Recognition 1.0"]:
                        task = self._create_task(tasks["icdar_localization_and_recognition"], images)
                    elif dump_format_name == "ICDAR Segmentation 1.0":
                        task = self._create_task(tasks["icdar_segmentation"], images)
                    else:
                        task = self._create_task(tasks["main"], images)
                    task_id = task["id"]
                    if dump_format_name in [
                        "MOT 1.1", "MOTS PNG 1.0", \
                        "PASCAL VOC 1.1", "Segmentation mask 1.1", \
                        "TFRecord 1.0", "YOLO 1.1", "ImageNet 1.0", \
                        "WiderFace 1.0", "VGGFace2 1.0", \
                    ]:
                        self._create_annotations(task, dump_format_name, "default")
                    else:
                        self._create_annotations(task, dump_format_name, "random")
                    # dump annotations
                    url = self._generate_url_dump_tasks_annotations(task_id)

                    data = {
                        "format": dump_format_name,
                        "action": "download",
                    }
                    task_ann = TaskAnnotation(task_id)
                    task_ann.init_from_db()
                    prev_data = task_ann.data
                    for user, edata in list(expected_dump.items()):
                        user_name = edata['name']
                        file_zip_name = osp.join(test_dir, f'{test_name}_{user_name}_{dump_format_name}.zip')
                        response = self._download_file(url, data, user, file_zip_name)

                        self.assertEqual(response.status_code, edata['code'])
                        self.assertEqual(osp.exists(file_zip_name), edata['file_exists'])

            # Upload annotations with objects type is shape
            for upload_format in upload_formats:
                upload_format_name = upload_format.DISPLAY_NAME
                if upload_format_name == "CVAT 1.1":
                    file_zip_name = osp.join(test_dir, f'{test_name}_admin_CVAT for images 1.1.zip.zip')
                else:

                    file_zip_name = osp.join(test_dir, f'{test_name}_admin_{upload_format_name}.zip')
                if not upload_format.ENABLED or not osp.exists(file_zip_name):
                    continue
                with self.subTest(format=upload_format_name):
                    if upload_format_name in [
                        "MOTS PNG 1.0",  # issue #2925 and changed points values
                    ]:
                        self.skipTest("Format is fail")
                    if osp.exists(file_zip_name):
                        for user, edata in list(expected_upload.items()):
                            # remove all annotations from task (create new task without annotation)
                            images = self._generate_task_images(3)
                            if upload_format_name == "Market-1501 1.0":
                                task = self._create_task(tasks["market1501"], images)
                            elif upload_format_name in ["ICDAR Localization 1.0", "ICDAR Recognition 1.0"]:
                                task = self._create_task(tasks["icdar_localization_and_recognition"], images)
                            elif upload_format_name == "ICDAR Segmentation 1.0":
                                task = self._create_task(tasks["icdar_segmentation"], images)
                            else:
                                task = self._create_task(tasks["main"], images)
                            task_id = task["id"]
                            url = self._generate_url_upload_tasks_annotations(task_id, upload_format_name)

                            with open(file_zip_name, 'rb') as binary_file:
                                response = self._upload_file(url, {"annotation_file": binary_file}, user)
                                self.assertEqual(response.status_code, edata['accept code'])
                                response = self._upload_file(url, {}, user)
                                self.assertEqual(response.status_code, edata['code'])

    def test_api_v1_dump_annotations_with_objects_type_is_track(self):
        test_name = self._testMethodName

        dump_formats = dm.views.get_export_formats()
        upload_formats = dm.views.get_import_formats()
        expected_upload = {
            self.admin: {'name': 'admin', 'code': status.HTTP_201_CREATED, 'accept code': status.HTTP_202_ACCEPTED,
                         'annotation_loaded': True},
            self.user: {'name': 'user', 'code': status.HTTP_201_CREATED, 'accept code': status.HTTP_202_ACCEPTED,
                        'annotation_loaded': True},
            None: {'name': 'none', 'code': status.HTTP_401_UNAUTHORIZED, 'accept code': status.HTTP_401_UNAUTHORIZED,
                   'annotation_loaded': False},
        }
        expected_dump = {
            self.admin: {'name': 'admin', 'code': status.HTTP_200_OK, 'file_exists': True},
            self.user: {'name': 'user', 'code': status.HTTP_200_OK, 'file_exists': True},
            None: {'name': 'none', 'code': status.HTTP_401_UNAUTHORIZED, 'file_exists': False},
        }

        with TestDir() as test_dir:
            # Dump annotations with objects type is track
            for dump_format in dump_formats:
                if not dump_format.ENABLED:
                    continue
                dump_format_name = dump_format.DISPLAY_NAME
                with self.subTest(format=dump_format_name):
                    # create task with annotations
                    video = self._generate_task_videos(1)
                    if dump_format_name == "Market-1501 1.0":
                        task = self._create_task(tasks["market1501"], video)
                    elif dump_format_name in ["ICDAR Localization 1.0", "ICDAR Recognition 1.0"]:
                        task = self._create_task(tasks["icdar_localization_and_recognition"], video)
                    elif dump_format_name == "ICDAR Segmentation 1.0":
                        task = self._create_task(tasks["icdar_segmentation"], video)
                    else:
                        task = self._create_task(tasks["main"], video)
                    task_id = task["id"]

                    if dump_format_name in [
                            "MOT 1.1", "MOTS PNG 1.0", \
                            "PASCAL VOC 1.1", "Segmentation mask 1.1", \
                            "TFRecord 1.0", "YOLO 1.1", "ImageNet 1.0", \
                            "WiderFace 1.0", "VGGFace2 1.0", \
                    ]:
                        self._create_annotations(task, dump_format_name, "default")
                    else:
                        self._create_annotations(task, dump_format_name, "random")
                    # dump annotations
                    url = self._generate_url_dump_tasks_annotations(task_id)

                    data = {
                        "format": dump_format_name,
                        "action": "download",
                    }
                    for user, edata in list(expected_dump.items()):
                        user_name = edata['name']
                        file_zip_name = osp.join(test_dir, f'{test_name}_{user_name}_{dump_format_name}.zip')
                        response = self._download_file(url, data, user, file_zip_name)
                        self.assertEqual(response.status_code, edata['code'])
                        self.assertEqual(osp.exists(file_zip_name), edata['file_exists'])
            # Upload annotations with objects type is track
            for upload_format in upload_formats:
                upload_format_name = upload_format.DISPLAY_NAME
                if upload_format_name == "CVAT 1.1":
                    file_zip_name = osp.join(test_dir, f'{test_name}_admin_CVAT for video 1.1.zip')
                else:
                    file_zip_name = osp.join(test_dir, f'{test_name}_admin_{upload_format_name}.zip')
                if not upload_format.ENABLED or not osp.exists(file_zip_name):
                    continue
                with self.subTest(format=upload_format_name):
                    if upload_format_name in [
                        "MOTS PNG 1.0",  # issue #2925 and changed points values
                    ]:
                        self.skipTest("Format is fail")
                    if osp.exists(file_zip_name):
                        for user, edata in list(expected_upload.items()):
                            # remove all annotations from task (create new task without annotation)
                            video = self._generate_task_videos(1)
                            if upload_format_name == "Market-1501 1.0":
                                task = self._create_task(tasks["market1501"], video)
                            elif upload_format_name in ["ICDAR Localization 1.0", "ICDAR Recognition 1.0"]:
                                task = self._create_task(tasks["icdar_localization_and_recognition"], video)
                            elif upload_format_name == "ICDAR Segmentation 1.0":
                                task = self._create_task(tasks["icdar_segmentation"], video)
                            else:
                                task = self._create_task(tasks["main"], video)
                            task_id = task["id"]
                            url = self._generate_url_upload_tasks_annotations(task_id, upload_format_name)

                            with open(file_zip_name, 'rb') as binary_file:
                                response = self._upload_file(url, {"annotation_file": binary_file}, user)
                                self.assertEqual(response.status_code, edata['accept code'])
                                response = self._upload_file(url, {}, user)
                                self.assertEqual(response.status_code, edata['code'])

    def test_api_v1_dump_tag_annotations(self):
        dump_format_name = "CVAT for images 1.1"
        data = {
            "format": dump_format_name,
            "action": "download",
        }
        test_cases = ['all' 'first']
        expected = {
            self.admin: {'name': 'admin', 'code': status.HTTP_200_OK, 'file_exists': True},
            self.user: {'name': 'user', 'code': status.HTTP_200_OK, 'file_exists': True},
        }
        for test_case in test_cases:
            images = self._generate_task_images(10)
            task = self._create_task(tasks["change overlap and segment size"], images)
            task_id = task["id"]
            jobs = self._get_jobs(task_id)

            if test_case == "all":
                for job in jobs:
                    self._create_annotations_in_job(task, job["id"], "CVAT for images 1.1 tag", "default")
            else:
                self._create_annotations_in_job(task, jobs[0]["id"], "CVAT for images 1.1 tag", "default")

            for user, edata in list(expected.items()):
                with self.subTest(format=f"{edata['name']}"):
                    with TestDir() as test_dir:
                        user_name = edata['name']
                        url = self._generate_url_dump_tasks_annotations(task_id)

                        file_zip_name = osp.join(test_dir, f'{user_name}.zip')
                        response = self._download_file(url, data, user, file_zip_name)
                        self.assertEqual(response.status_code, edata['code'])
                        self.assertEqual(osp.exists(file_zip_name), edata['file_exists'])

    def test_api_v1_dump_and_upload_annotations_with_objects_are_different_images(self):
        test_name = self._testMethodName
        dump_format_name = "CVAT for images 1.1"
        data = {
            "format": dump_format_name,
            "action": "download",
        }
        upload_types = ["task", "job"]

        images = self._generate_task_images(2)
        task = self._create_task(tasks["main"], images)
        task_id = task["id"]

        for type in upload_types:
            with self.subTest(format=type):
                with TestDir() as test_dir:
                    if type == "task":
                        self._create_annotations(task, "CVAT for images 1.1 different types", "random")
                    else:
                        jobs = self._get_jobs(task_id)
                        job_id = jobs[0]["id"]
                        self._create_annotations_in_job(task, job_id, "CVAT for images 1.1 different types", "random")
                    url = self._generate_url_dump_tasks_annotations(task_id)
                    file_zip_name = osp.join(test_dir, f'{test_name}_{type}.zip')

                    response = self._download_file(url, data, self.admin, file_zip_name)
                    self.assertEqual(response.status_code, status.HTTP_200_OK)
                    self.assertEqual(osp.exists(file_zip_name), True)
                    self._remove_annotations(url, self.admin)
                    if type == "task":
                        url_upload = self._generate_url_upload_tasks_annotations(task_id, "CVAT 1.1")
                    else:
                        jobs = self._get_jobs(task_id)
                        url_upload = self._generate_url_upload_job_annotations(jobs[0]["id"], "CVAT 1.1")

                    with open(file_zip_name, 'rb') as binary_file:
                        response = self._upload_file(url_upload, {"annotation_file": binary_file}, self.admin)
                        self.assertEqual(response.status_code, status.HTTP_202_ACCEPTED)
                        response = self._upload_file(url_upload, {}, self.admin)
                        self.assertEqual(response.status_code, status.HTTP_201_CREATED)

                        response = self._get_request(url, self.admin)
                        self.assertEqual(len(response.data["shapes"]), 2)
                        self.assertEqual(len(response.data["tracks"]), 0)

    def test_api_v1_dump_and_upload_annotations_with_objects_are_different_video(self):
        test_name = self._testMethodName
        dump_format_name = "CVAT for video 1.1"
        data = {
            "format": dump_format_name,
            "action": "download",
        }
        upload_types = ["task", "job"]

        video = self._generate_task_videos(1)
        task = self._create_task(tasks["main"], video)
        task_id = task["id"]

        for type in upload_types:
            with self.subTest(format=type):
                with TestDir() as test_dir:
                    if type == "task":
                        self._create_annotations(task, "CVAT for images 1.1 different types", "random")
                    else:
                        jobs = self._get_jobs(task_id)
                        job_id = jobs[0]["id"]
                        self._create_annotations_in_job(task, job_id, "CVAT for images 1.1 different types", "random")
                    url = self._generate_url_dump_tasks_annotations(task_id)
                    file_zip_name = osp.join(test_dir, f'{test_name}_{type}.zip')

                    response = self._download_file(url, data, self.admin, file_zip_name)
                    self.assertEqual(response.status_code, status.HTTP_200_OK)
                    self.assertEqual(osp.exists(file_zip_name), True)
                    self._remove_annotations(url, self.admin)
                    if type == "task":
                        url_upload = self._generate_url_upload_tasks_annotations(task_id, "CVAT 1.1")
                    else:
                        jobs = self._get_jobs(task_id)
                        url_upload = self._generate_url_upload_job_annotations(jobs[0]["id"], "CVAT 1.1")

                    with open(file_zip_name, 'rb') as binary_file:
                        response = self._upload_file(url_upload, {"annotation_file": binary_file}, self.admin)
                        self.assertEqual(response.status_code, status.HTTP_202_ACCEPTED)
                        response = self._upload_file(url_upload, {}, self.admin)
                        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
                        self.assertEqual(osp.exists(file_zip_name), True)

                        response = self._get_request(url, self.admin)
                        self.assertEqual(len(response.data["shapes"]), 0)
                        self.assertEqual(len(response.data["tracks"]), 2)

    def test_api_v1_dump_and_upload_with_objects_type_is_track_and_outside_property(self):
        test_name = self._testMethodName
        dump_format_name = "CVAT for video 1.1"
        data = {
            "format": dump_format_name,
            "action": "download",
        }
        video = self._generate_task_videos(1)
        task = self._create_task(tasks["main"], video)
        self._create_annotations(task, "CVAT for video 1.1 slice track", "random")
        task_id = task["id"]

        with TestDir() as test_dir:
            url = self._generate_url_dump_tasks_annotations(task_id)
            file_zip_name = osp.join(test_dir, f'{test_name}.zip')
            response = self._download_file(url, data, self.admin, file_zip_name)
            self.assertEqual(response.status_code, status.HTTP_200_OK)
            self.assertEqual(osp.exists(file_zip_name), True)

            with open(file_zip_name, 'rb') as binary_file:
                url = self._generate_url_upload_tasks_annotations(task_id, "CVAT 1.1")
                response = self._upload_file(url, {"annotation_file": binary_file}, self.admin)
                self.assertEqual(response.status_code, status.HTTP_202_ACCEPTED)
                response = self._upload_file(url, {}, self.admin)
                self.assertEqual(response.status_code, status.HTTP_201_CREATED)

    def test_api_v1_dump_and_upload_with_objects_type_is_track_and_keyframe_property(self):
        test_name = self._testMethodName
        dump_format_name = "CVAT for video 1.1"
        data = {
            "format": dump_format_name,
            "action": "download",
        }
        video = self._generate_task_videos(1)
        task = self._create_task(tasks["main"], video)
        self._create_annotations(task, "CVAT for video 1.1 slice track keyframe", "random")
        task_id = task["id"]

        with TestDir() as test_dir:
            url = self._generate_url_dump_tasks_annotations(task_id)
            file_zip_name = osp.join(test_dir, f'{test_name}.zip')
            response = self._download_file(url, data, self.admin, file_zip_name)
            self.assertEqual(response.status_code, status.HTTP_200_OK)
            self.assertEqual(osp.exists(file_zip_name), True)

            with open(file_zip_name, 'rb') as binary_file:
                url = self._generate_url_upload_tasks_annotations(task_id, "CVAT 1.1")
                response = self._upload_file(url, {"annotation_file": binary_file}, self.admin)
                self.assertEqual(response.status_code, status.HTTP_202_ACCEPTED)
                response = self._upload_file(url, {}, self.admin)
                self.assertEqual(response.status_code, status.HTTP_201_CREATED)

    def test_api_v1_dump_upload_annotations_from_several_jobs(self):
        test_name = self._testMethodName
        dump_format_name = "CVAT for images 1.1"
        data = {
            "format": dump_format_name,
            "action": "download",
        }

        images = self._generate_task_images(10)
        task = self._create_task(tasks["change overlap and segment size"], images)
        task_id = task["id"]
        jobs = self._get_jobs(task_id)
        for job in jobs:
            self._create_annotations_in_job(task, job["id"], "CVAT for images 1.1 merge", "random")

        with TestDir() as test_dir:
            url = self._generate_url_dump_tasks_annotations(task_id)
            file_zip_name = osp.join(test_dir, f'{test_name}.zip')
            response = self._download_file(url, data, self.admin, file_zip_name)
            self.assertEqual(response.status_code, status.HTTP_200_OK)
            self.assertEqual(osp.exists(file_zip_name), True)

            # remove annotations
            self._remove_annotations(url, self.admin)
            url = self._generate_url_upload_tasks_annotations(task_id, "CVAT 1.1")
            with open(file_zip_name, 'rb') as binary_file:
                response = self._upload_file(url, {"annotation_file": binary_file}, self.admin)
                self.assertEqual(response.status_code, status.HTTP_202_ACCEPTED)
                response = self._upload_file(url, {}, self.admin)
                self.assertEqual(response.status_code, status.HTTP_201_CREATED)

    def test_api_v1_dump_annotations_with_objects_type_is_shape_from_several_jobs(self):
        test_name = self._testMethodName
        dump_format_name = "CVAT for images 1.1"
        data = {
            "format": dump_format_name,
            "action": "download",
        }
        test_cases = ['all', 'first']

        images = self._generate_task_images(10)
        task = self._create_task(tasks["change overlap and segment size"], images)
        task_id = task["id"]

        for test_case in test_cases:
            with TestDir() as test_dir:
                jobs = self._get_jobs(task_id)
                if test_case == "all":
                    for job in jobs:
                        self._create_annotations_in_job(task, job["id"], dump_format_name, "default")
                else:
                    self._create_annotations_in_job(task, jobs[0]["id"], dump_format_name, "default")

                url = self._generate_url_dump_tasks_annotations(task_id)

                file_zip_name = osp.join(test_dir, f'{test_name}.zip')
                response = self._download_file(url, data, self.admin, file_zip_name)
                self.assertEqual(response.status_code, status.HTTP_200_OK)
                self.assertEqual(osp.exists(file_zip_name), True)

                # remove annotations
                self._remove_annotations(url, self.admin)
                url = self._generate_url_upload_tasks_annotations(task_id, "CVAT 1.1")
                with open(file_zip_name, 'rb') as binary_file:
                    response = self._upload_file(url, {"annotation_file": binary_file}, self.admin)
                    self.assertEqual(response.status_code, status.HTTP_202_ACCEPTED)
                    response = self._upload_file(url, {}, self.admin)
                    self.assertEqual(response.status_code, status.HTTP_201_CREATED)

    def test_api_v1_export_dataset(self):
        test_name = self._testMethodName
        dump_formats = dm.views.get_export_formats()

        expected = {
            self.admin: {'name': 'admin', 'code': status.HTTP_200_OK, 'file_exists': True},
            self.user: {'name': 'user', 'code': status.HTTP_200_OK, 'file_exists': True},
            None: {'name': 'none', 'code': status.HTTP_401_UNAUTHORIZED, 'file_exists': False},
        }

        with TestDir() as test_dir:
            # Dump annotations with objects type is shape
            for dump_format in dump_formats:
                if not dump_format.ENABLED or dump_format.DISPLAY_NAME != "CVAT for images 1.1":
                    continue
                dump_format_name = dump_format.DISPLAY_NAME
                with self.subTest(format=dump_format_name):
                    images = self._generate_task_images(3)
                    # create task with annotations
                    if dump_format_name == "Market-1501 1.0":
                        task = self._create_task(tasks["market1501"], images)
                    elif dump_format_name in ["ICDAR Localization 1.0", "ICDAR Recognition 1.0"]:
                        task = self._create_task(tasks["icdar_localization_and_recognition"], images)
                    elif dump_format_name == "ICDAR Segmentation 1.0":
                        task = self._create_task(tasks["icdar_segmentation"], images)
                    else:
                        task = self._create_task(tasks["main"], images)
                    task_id = task["id"]
                    # dump annotations
                    url = self._generate_url_dump_dataset(task_id)
                    data = {
                        "format": dump_format_name,
                        "action": "download",
                    }
                    for user, edata in list(expected.items()):
                        user_name = edata['name']
                        file_zip_name = osp.join(test_dir, f'{test_name}_{user_name}_{dump_format_name}.zip')
                        response = self._download_file(url, data, user, file_zip_name)
                        self.assertEqual(response.status_code, edata['code'])
                        self.assertEqual(osp.exists(file_zip_name), edata['file_exists'])

    def test_api_v1_dump_empty_frames(self):
        dump_formats = dm.views.get_export_formats()
        upload_formats = dm.views.get_import_formats()

        with TestDir() as test_dir:
            for dump_format in dump_formats:
                if not dump_format.ENABLED:
                    continue
                dump_format_name = dump_format.DISPLAY_NAME
                with self.subTest(format=dump_format_name):
                    images = self._generate_task_images(3)
                    task = self._create_task(tasks["no attributes"], images)
                    task_id = task["id"]
                    self._create_annotations(task, "empty annotation", "default")
                    url = self._generate_url_dump_tasks_annotations(task_id)

                    data = {
                        "format": dump_format_name,
                        "action": "download",
                    }
                    file_zip_name = osp.join(test_dir, f'empty_{dump_format_name}.zip')
                    response = self._download_file(url, data, self.admin, file_zip_name)

                    self.assertEqual(response.status_code, status.HTTP_200_OK)
                    self.assertEqual(osp.exists(file_zip_name), True)

            for upload_format in upload_formats:
                upload_format_name = upload_format.DISPLAY_NAME
                if upload_format_name == "CVAT 1.1":
                    file_zip_name = osp.join(test_dir, f'empty_CVAT for images 1.1.zip')
                else:
                    file_zip_name = osp.join(test_dir, f'empty_{upload_format_name}.zip')
                if not osp.exists(file_zip_name) or not upload_format.ENABLED:
                    continue
                with self.subTest(format=upload_format_name):
                    if upload_format_name in [
                        "MOTS PNG 1.0",  # issue #2925 and changed points values
                    ]:
                        self.skipTest("Format is fail")
                    images = self._generate_task_images(3)
                    task = self._create_task(tasks["no attributes"], images)
                    task_id = task["id"]

                    url = self._generate_url_upload_tasks_annotations(task_id, upload_format_name)

                    with open(file_zip_name, 'rb') as binary_file:
                        response = self._upload_file(url, {"annotation_file": binary_file}, self.admin)
                        self.assertEqual(response.status_code, status.HTTP_202_ACCEPTED)
                        response = self._upload_file(url, {}, self.admin)
                        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
                        self.assertIsNone(response.data)

    def test_api_v1_rewriting_annotations(self):
        test_name = self._testMethodName
        dump_formats = dm.views.get_export_formats()
        with TestDir() as test_dir:
            for dump_format in dump_formats:
                if not dump_format.ENABLED:
                    continue
                dump_format_name = dump_format.DISPLAY_NAME
                with self.subTest(format=dump_format_name):
                    if dump_format_name in [
                        "MOTS PNG 1.0",  # issue #2925 and changed points values
                        "Datumaro 1.0" # Datumaro 1.0 is not in the list of import format
                    ]:
                        self.skipTest("Format is fail")
                    images = self._generate_task_images(3)
                    if dump_format_name == "Market-1501 1.0":
                        task = self._create_task(tasks["market1501"], images)
                    elif dump_format_name in ["ICDAR Localization 1.0", "ICDAR Recognition 1.0"]:
                        task = self._create_task(tasks["icdar_localization_and_recognition"], images)
                    elif dump_format_name == "ICDAR Segmentation 1.0":
                        task = self._create_task(tasks["icdar_segmentation"], images)
                    else:
                        task = self._create_task(tasks["main"], images)
                    task_id = task["id"]
                    if dump_format_name in [
                        "MOT 1.1", "MOTS PNG 1.0", \
                        "PASCAL VOC 1.1", "Segmentation mask 1.1", \
                        "TFRecord 1.0", "YOLO 1.1", "ImageNet 1.0", \
                        "WiderFace 1.0", "VGGFace2 1.0", \
                    ]:
                        self._create_annotations(task, dump_format_name, "default")
                    else:
                        self._create_annotations(task, dump_format_name, "random")

                    task_ann = TaskAnnotation(task_id)
                    task_ann.init_from_db()
                    task_ann_prev_data = task_ann.data
                    url = self._generate_url_dump_tasks_annotations(task_id)

                    data = {
                        "format": dump_format_name,
                        "action": "download",
                    }
                    file_zip_name = osp.join(test_dir, f'{test_name}_{dump_format_name}.zip')
                    response = self._download_file(url, data, self.admin, file_zip_name)
                    self.assertEqual(response.status_code, status.HTTP_200_OK)
                    self.assertEqual(osp.exists(file_zip_name), True)

                    self._remove_annotations(url, self.admin)

                    self._create_annotations(task, "CVAT for images 1.1 many jobs", "default")

                    if dump_format_name == "CVAT for images 1.1" or dump_format_name == "CVAT for video 1.1":
                        dump_format_name = "CVAT 1.1"
                    url = self._generate_url_upload_tasks_annotations(task_id, dump_format_name)

                    with open(file_zip_name, 'rb') as binary_file:
                        response = self._upload_file(url, {"annotation_file": binary_file}, self.admin)
                        self.assertEqual(response.status_code, status.HTTP_202_ACCEPTED)
                        response = self._upload_file(url, {}, self.admin)
                        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
                    task_ann = TaskAnnotation(task_id)
                    task_ann.init_from_db()
                    task_ann_data = task_ann.data
                    self.assertEqual(len(task_ann_data["shapes"]), len(task_ann_prev_data["shapes"]))

    def test_api_v1_unit_test_on_normalize_shape_function(self):
        # 3 points
        norm_shape = TrackManager.normalize_shape({
             "points": [1.5, 2.5],
        })

        # 4 points
        norm_shape = TrackManager.normalize_shape({
            "points": [1.5, 2.5, 0.5, 8.6, 9.6, 3.6, 2.8, 7.2],
        })
        # 1 point
        norm_shape = TrackManager.normalize_shape({
            "points": [1.5, 2.5],
        })
        # empty shape
        with self.assertRaises(ValueError):
            norm_shape = TrackManager.normalize_shape({
                "points": [],
            })
        # invalid count of points
        with self.assertRaises(ValueError):
            norm_shape = TrackManager.normalize_shape({
                "points": [1.5, 2.5, 7.5],
            })
        # negative points
        norm_shape = TrackManager.normalize_shape({
            "points": [-1.5, 2.5, -9.8, -4.6],
        })
        # integer
        norm_shape = TrackManager.normalize_shape({
            "points": [1, 2, 9, 4],
        })

    def test_api_v1_check_duplicated_polygon_points(self):
        # issue 2924
        test_name = self._testMethodName
        images = self._generate_task_images(10)
        task = self._create_task(tasks["main"], images)
        task_id = task["id"]
        annotation_name = "CVAT for video 1.1 polygon"
        data = {
            "format": "CVAT for video 1.1",
            "action": "download",
        }
        self._create_annotations(task, annotation_name, "default")
        annotation_points = annotations[annotation_name]["tracks"][0]["shapes"][0]['points']
        with TestDir() as test_dir:
            url = self._generate_url_dump_tasks_annotations(task_id)
            file_zip_name = osp.join(test_dir, f'{test_name}.zip')
            response = self._download_file(url, data, self.admin, file_zip_name)
            self.assertEqual(response.status_code, status.HTTP_200_OK)
            self.assertEqual(osp.exists(file_zip_name), True)
            # extract zip
            folder_name = osp.join(test_dir, f'{test_name}')
            with zipfile.ZipFile(file_zip_name, 'r') as zip_ref:
                zip_ref.extractall(folder_name)

            tree = ET.parse(osp.join(folder_name, 'annotations.xml'))
            root = tree.getroot()
            for polygon in root.findall("./track[@id='0']/polygon"):
                polygon_points = polygon.attrib["points"].replace(",", ";")
                polygon_points = polygon_points.split(";")
                polygon_points = [float(p) for p in polygon_points]
                self.assertEqual(polygon_points, annotation_points)

    def test_api_v1_tasks_annotations_dump_and_upload_many_jobs_with_datumaro(self):
        test_name = self._testMethodName
        upload_format_name = "CVAT 1.1"

        for include_images in (False, True):
            for dump_format_name in ("CVAT for images 1.1", "CVAT for video 1.1"):
                with self.subTest():
                    # create task with annotations
                    images = self._generate_task_images(13)
                    task = self._create_task(tasks["many jobs"], images)
                    self._create_annotations(task, f'{dump_format_name} many jobs', "dafault")

                    task_id = task["id"]
                    task_ann = TaskAnnotation(task_id)
                    task_ann.init_from_db()
                    task_data = TaskData(task_ann.ir_data, Task.objects.get(pk=task_id))
                    extractor = CvatTaskDataExtractor(task_data, include_images=include_images)
                    data_from_task_before_upload = Dataset.from_extractors(extractor)

                    # dump annotations
                    url = self._generate_url_dump_tasks_annotations(task_id)
                    data = {
                        "format": dump_format_name,
                        "action": "download",
                    }
                    with TestDir() as test_dir:
                        file_zip_name = osp.join(test_dir, f'{test_name}_{dump_format_name}.zip')
                        self._download_file(url, data, self.admin, file_zip_name)
                        self._check_downloaded_file(file_zip_name)

                        # remove annotations
                        self._remove_annotations(url, self.admin)

                        # upload annotations
                        url = self._generate_url_upload_tasks_annotations(task_id, upload_format_name)
                        with open(file_zip_name, 'rb') as binary_file:
                            response = self._upload_file(url, {"annotation_file": binary_file}, self.admin)
                            self.assertEqual(response.status_code, status.HTTP_202_ACCEPTED)
                            response = self._upload_file(url, {}, self.admin)
                            self.assertEqual(response.status_code, status.HTTP_201_CREATED)

                        # equals annotations
                        task_ann = TaskAnnotation(task_id)
                        task_ann.init_from_db()
                        task_data = TaskData(task_ann.ir_data, Task.objects.get(pk=task_id))
                        extractor = CvatTaskDataExtractor(task_data, include_images=include_images)
                        data_from_task_after_upload = Dataset.from_extractors(extractor)
                        compare_datasets(self, data_from_task_before_upload, data_from_task_after_upload)

    def test_api_v1_tasks_annotations_dump_and_upload_with_datumaro(self):
        test_name = self._testMethodName
        # get formats
        dump_formats = dm.views.get_export_formats()
        for dump_format in dump_formats:
            if dump_format.ENABLED:
                dump_format_name = dump_format.DISPLAY_NAME
                with self.subTest():
                    if dump_format_name in [
                        "MOT 1.1", # issue #2925
                        "Datumaro 1.0", # not uploaded
                        "MOTS PNG 1.0", # issue #2925 and changed points values
                    ]:
                        self.skipTest("Format is fail")

                    for include_images in (False, True):
                        # create task
                        images = self._generate_task_images(3)
                        if dump_format_name == "Market-1501 1.0":
                            task = self._create_task(tasks["market1501"], images)
                        elif dump_format_name in ["ICDAR Localization 1.0",
                                "ICDAR Recognition 1.0"]:
                            task = self._create_task(tasks["icdar_localization_and_recognition"], images)
                        elif dump_format_name == "ICDAR Segmentation 1.0":
                            task = self._create_task(tasks["icdar_segmentation"], images)
                        else:
                            task = self._create_task(tasks["main"], images)

                        # create annotations
                        if dump_format_name in [
                            "MOT 1.1", "MOTS PNG 1.0", \
                            "PASCAL VOC 1.1", "Segmentation mask 1.1", \
                            "TFRecord 1.0", "YOLO 1.1", "ImageNet 1.0", \
                            "WiderFace 1.0", "VGGFace2 1.0", \
                        ]:
                            self._create_annotations(task, dump_format_name, "default")
                        else:
                            self._create_annotations(task, dump_format_name, "random")

                        task_id = task["id"]
                        data_from_task_before_upload = self._get_data_from_task(task_id, include_images)

                        # dump annotations
                        url = self._generate_url_dump_tasks_annotations(task_id)
                        data = {
                            "format": dump_format_name,
                            "action": "download",
                        }
                        with TestDir() as test_dir:
                            file_zip_name = osp.join(test_dir, f'{test_name}_{dump_format_name}.zip')
                            self._download_file(url, data, self.admin, file_zip_name)
                            self._check_downloaded_file(file_zip_name)

                            # remove annotations
                            self._remove_annotations(url, self.admin)

                            # upload annotations
                            if dump_format_name in ["CVAT for images 1.1", "CVAT for video 1.1"]:
                                upload_format_name = "CVAT 1.1"
                            else:
                                upload_format_name = dump_format_name
                            url = self._generate_url_upload_tasks_annotations(task_id, upload_format_name)
                            with open(file_zip_name, 'rb') as binary_file:
                                response = self._upload_file(url, {"annotation_file": binary_file}, self.admin)
                                self.assertEqual(response.status_code, status.HTTP_202_ACCEPTED)
                                response = self._upload_file(url, {}, self.admin)
                                self.assertEqual(response.status_code, status.HTTP_201_CREATED)
                            # equals annotations
                            data_from_task_after_upload = self._get_data_from_task(task_id, include_images)
                            compare_datasets(self, data_from_task_before_upload, data_from_task_after_upload)
