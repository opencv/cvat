# Copyright (C) 2020-2022 Intel Corporation
# Copyright (C) 2022 CVAT.ai Corporation
#
# SPDX-License-Identifier: MIT

import io
import json
import os
from pathlib import Path

import pytest
from PIL import Image
from rest_api.utils.config import BASE_URL, USER_PASS
from rest_api.utils.helpers import generate_image_file
from sdk.util import generate_coco_json

from cvat_sdk import exceptions, make_client
from cvat_sdk.impl.tasks import TaskProxy
from cvat_sdk.types import ResourceType

from .util import generate_images, run_cli


@pytest.mark.usefixtures("changedb")
class TestCLI:
    @pytest.fixture(autouse=True)
    def setup(
        self,
        fxt_stdout: io.StringIO,
        tmp_path: Path,
        admin_user: str,
    ):
        self.tmp_path = tmp_path
        self.stdout = fxt_stdout
        self.host, self.port = BASE_URL.rsplit(":", maxsplit=1)
        self.user = admin_user
        self.password = USER_PASS
        self.client = make_client(
            host=self.host, port=self.port, credentials=(self.user, self.password)
        )
        self.client.config.status_check_period = 0.01

        yield

        self.tmp_path = None

    @pytest.fixture
    def fxt_image_file(self):
        img_path = self.tmp_path / "img.png"
        with img_path.open("wb") as f:
            f.write(generate_image_file(filename=str(img_path)).getvalue())

        return img_path

    @pytest.fixture
    def fxt_coco_file(self, fxt_image_file: Path):
        img_filename = fxt_image_file
        img_size = Image.open(img_filename).size
        ann_filename = self.tmp_path / "coco.json"
        generate_coco_json(ann_filename, img_info=(img_filename, *img_size))

        yield ann_filename

    @pytest.fixture
    def fxt_backup_file(self, fxt_new_task: TaskProxy, fxt_coco_file: str):
        backup_path = self.tmp_path / "backup.zip"

        fxt_new_task.import_annotations("COCO 1.0", filename=fxt_coco_file)
        fxt_new_task.download_backup(str(backup_path))

        yield backup_path

    @pytest.fixture
    def fxt_new_task(self):
        files = generate_images(str(self.tmp_path), 5)

        task = self.client.create_task(
            spec={
                "name": "test_task",
                "labels": [{"name": "car"}, {"name": "person"}],
            },
            resource_type=ResourceType.LOCAL,
            resources=files,
        )

        return task

    def run_cli(self, cmd: str, *args: str, expected_code: int = 0) -> str:
        run_cli(
            self,
            "--auth",
            f"{self.user}:{self.password}",
            "--server-host",
            self.host,
            "--server-port",
            self.port,
            cmd,
            *args,
            expected_code=expected_code,
        )
        return self.stdout.getvalue()

    def test_can_create_task_from_local_images(self):
        files = generate_images(str(self.tmp_path), 5)

        stdout = self.run_cli(
            "create",
            "test_task",
            ResourceType.LOCAL.name,
            *files,
            "--labels",
            json.dumps([{"name": "car"}, {"name": "person"}]),
            "--completion_verification_period",
            "0.01",
        )

        task_id = int(stdout.split()[-1])
        assert self.client.retrieve_task(task_id).size == 5

    def test_can_list_tasks_in_simple_format(self, fxt_new_task: TaskProxy):
        output = self.run_cli("ls")

        results = output.split("\n")
        assert any(str(fxt_new_task.id) in r for r in results)

    def test_can_list_tasks_in_json_format(self, fxt_new_task: TaskProxy):
        output = self.run_cli("ls", "--json")

        results = json.loads(output)
        assert any(r["id"] == fxt_new_task.id for r in results)

    def test_can_delete_task(self, fxt_new_task: TaskProxy):
        self.run_cli("delete", str(fxt_new_task.id))

        with pytest.raises(exceptions.NotFoundException):
            fxt_new_task.fetch()

    def test_can_download_task_annotations(self, fxt_new_task: TaskProxy):
        filename: Path = self.tmp_path / "task_{fxt_new_task.id}-cvat.zip"
        self.run_cli(
            "dump",
            str(fxt_new_task.id),
            str(filename),
            "--format",
            "CVAT for images 1.1",
            "--with-images",
            "no",
            "--completion_verification_period",
            "0.01",
        )

        assert 0 < filename.stat().st_size

    def test_can_download_task_backup(self, fxt_new_task: TaskProxy):
        filename: Path = self.tmp_path / "task_{fxt_new_task.id}-cvat.zip"
        self.run_cli(
            "export",
            str(fxt_new_task.id),
            str(filename),
            "--completion_verification_period",
            "0.01",
        )

        assert 0 < filename.stat().st_size

    @pytest.mark.parametrize("quality", ("compressed", "original"))
    def test_can_download_task_frames(self, fxt_new_task: TaskProxy, quality: str):
        out_dir = str(self.tmp_path / "downloads")
        self.run_cli(
            "frames", str(fxt_new_task.id), "0", "1", "--outdir", out_dir, "--quality", quality
        )

        assert set(os.listdir(out_dir)) == {
            "task_{}_frame_{:06d}.jpg".format(fxt_new_task.id, i) for i in range(2)
        }

    # @scoped
    # def test_tasks_upload(self):
    #     path = os.path.join(settings.SHARE_ROOT, "test_cli.json")
    #     self._generate_coco_file(path)
    #     on_exit_do(os.remove, path)

    #     with closing(io.StringIO()) as pbar_out:
    #         pbar = tqdm(file=pbar_out, mininterval=0)

    #         self.cli.tasks_upload(self.task_id, "COCO 1.0", path, pbar=pbar)

    #         pbar_out = pbar_out.getvalue().strip("\r").split("\r")

    #     self.assertRegex(self.mock_stdout.getvalue(), ".*{}.*".format("annotation file"))
    #     self.assertRegex(pbar_out[-1], "100%")

    # @scoped
    # def test_tasks_import(self):
    #     anno_path = os.path.join(settings.SHARE_ROOT, "test_cli.json")
    #     self._generate_coco_file(anno_path)
    #     on_exit_do(os.remove, anno_path)

    #     backup_path = os.path.join(settings.SHARE_ROOT, "task_backup.zip")
    #     with closing(io.StringIO()) as pbar_out:
    #         pbar = tqdm(file=pbar_out, mininterval=0)
    #         self.cli.tasks_upload(self.task_id, "COCO 1.0", anno_path, pbar=pbar)
    #         self.cli.tasks_export(self.task_id, backup_path, pbar=pbar)
    #         on_exit_do(os.remove, backup_path)

    #     with closing(io.StringIO()) as pbar_out:
    #         pbar = tqdm(file=pbar_out, mininterval=0)

    #         self.cli.tasks_import(backup_path, pbar=pbar)

    #         pbar_out = pbar_out.getvalue().strip("\r").split("\r")

    #     self.assertRegex(self.mock_stdout.getvalue(), ".*{}.*".format("exported sucessfully"))
    #     self.assertRegex(pbar_out[-1], "100%")
