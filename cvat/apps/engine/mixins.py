# Copyright (C) 2021-2022 Intel Corporation
# Copyright (C) 2022 CVAT.ai Corporation
#
# SPDX-License-Identifier: MIT

import os
import os.path
import base64
from unittest import mock
import uuid

from django.conf import settings
from django.core.cache import cache
from distutils.util import strtobool
from rest_framework import status, mixins
from rest_framework.response import Response

from cvat.apps.engine.models import Location
from cvat.apps.engine.location import StorageType, get_location_configuration
from cvat.apps.engine.serializers import DataSerializer

class TusFile:
    _tus_cache_timeout = 3600
    def __init__(self, file_id, upload_dir):
        self.file_id = file_id
        self.upload_dir = upload_dir
        self.file_path = os.path.join(self.upload_dir, self.file_id)
        self.filename = cache.get("tus-uploads/{}/filename".format(file_id))
        self.file_size = int(cache.get("tus-uploads/{}/file_size".format(file_id)))
        self.metadata = cache.get("tus-uploads/{}/metadata".format(file_id))
        self.offset = cache.get("tus-uploads/{}/offset".format(file_id))

    def init_file(self):
        os.makedirs(self.upload_dir, exist_ok=True)
        file_path = os.path.join(self.upload_dir, self.file_id)
        with open(file_path, 'wb') as file:
            file.seek(self.file_size - 1)
            file.write(b'\0')

    def write_chunk(self, chunk):
        with open(self.file_path, 'r+b') as file:
            file.seek(chunk.offset)
            file.write(chunk.content)
        self.offset = cache.incr("tus-uploads/{}/offset".format(self.file_id), chunk.size)

    def is_complete(self):
        return self.offset == self.file_size

    def rename(self):
        file_id_path = os.path.join(self.upload_dir, self.file_id)
        file_path = os.path.join(self.upload_dir, self.filename)
        file_exists = os.path.lexists(os.path.join(self.upload_dir, self.filename))
        if file_exists:
            original_file_name, extension = os.path.splitext(self.filename)
            file_amount = 1
            while os.path.lexists(os.path.join(self.upload_dir, self.filename)):
                self.filename = "{}_{}{}".format(original_file_name, file_amount, extension)
                file_path = os.path.join(self.upload_dir, self.filename)
                file_amount += 1
        os.rename(file_id_path, file_path)

    def clean(self):
        cache.delete_many([
            "tus-uploads/{}/file_size".format(self.file_id),
            "tus-uploads/{}/filename".format(self.file_id),
            "tus-uploads/{}/offset".format(self.file_id),
            "tus-uploads/{}/metadata".format(self.file_id),
        ])

    @staticmethod
    def get_tusfile(file_id, upload_dir):
        file_exists = cache.get("tus-uploads/{}/filename".format(file_id), None) is not None
        if file_exists:
            return TusFile(file_id, upload_dir)
        return None

    @staticmethod
    def create_file(metadata, file_size, upload_dir):
        file_id = str(uuid.uuid4())
        filename = metadata.get("filename")
        cache.add("tus-uploads/{}/filename".format(file_id), "{}".format(filename), TusFile._tus_cache_timeout)
        cache.add("tus-uploads/{}/file_size".format(file_id), file_size, TusFile._tus_cache_timeout)
        cache.add("tus-uploads/{}/offset".format(file_id), 0, TusFile._tus_cache_timeout)
        cache.add("tus-uploads/{}/metadata".format(file_id), metadata, TusFile._tus_cache_timeout)

        tus_file = TusFile(file_id, upload_dir)
        tus_file.init_file()
        return tus_file

class TusChunk:
    def __init__(self, request):
        self.META = request.META
        self.offset = int(request.META.get("HTTP_UPLOAD_OFFSET", 0))
        self.size = int(request.META.get("CONTENT_LENGTH", settings.TUS_DEFAULT_CHUNK_SIZE))
        self.content = request.body

class UploadMixin:
    """
    Implements file uploads to the server. Allows to upload single and multiple files, suspend
    and resume uploading. Uses the TUS open file uploading protocol (https://tus.io/).

    Implements the following protocols:
    a. A single Data request

    and

    b.1. An Upload-Start request
    b.2.a. The regular TUS protocol requests (Upload-Length + Chunks)
    b.2.b. Upload-Multiple requests
    b.3. An Upload-Finish request

    Requests:
    - Data - POST, no extra headers or 'Upload-Start' + 'Upload-Finish' headers
    - Upload-Start - POST, has an 'Upload-Start' header
    - Upload-Length - POST, has an 'Upload-Length' header (read the TUS protocol)
    - Chunk - HEAD/PATCH (read the TUS protocol)
    - Upload-Finish - POST, has an 'Upload-Finish' header
    - Upload-Multiple - POST, has a 'Upload-Multiple' header
    """

    _tus_api_version = '1.0.0'
    _tus_api_version_supported = ['1.0.0']
    _tus_api_extensions = []
    _tus_max_file_size = str(settings.TUS_MAX_FILE_SIZE)
    _base_tus_headers = {
        'Tus-Resumable': _tus_api_version,
        'Tus-Version': ",".join(_tus_api_version_supported),
        'Tus-Extension': ",".join(_tus_api_extensions),
        'Tus-Max-Size': _tus_max_file_size,
        'Access-Control-Allow-Origin': "*",
        'Access-Control-Allow-Methods': "PATCH,HEAD,GET,POST,OPTIONS",
        'Access-Control-Expose-Headers': "Tus-Resumable,upload-length,upload-metadata,Location,Upload-Offset",
        'Access-Control-Allow-Headers': "Tus-Resumable,upload-length,upload-metadata,Location,Upload-Offset,content-type",
        'Cache-Control': 'no-store'
    }
    file_id_regex = r'(?P<file_id>\b[0-9a-f]{8}\b-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-\b[0-9a-f]{12}\b)'

    def _tus_response(self, status, data=None, extra_headers=None):
        response = Response(data, status)
        for key, value in self._base_tus_headers.items():
            response.__setitem__(key, value)
        if extra_headers:
            for key, value in extra_headers.items():
                response.__setitem__(key, value)
        return response

    def _get_metadata(self, request):
        metadata = {}
        if request.META.get("HTTP_UPLOAD_METADATA"):
            for kv in request.META.get("HTTP_UPLOAD_METADATA").split(","):
                splited_metadata = kv.split(" ")
                if len(splited_metadata) == 2:
                    key, value = splited_metadata
                    value = base64.b64decode(value)
                    if isinstance(value, bytes):
                        value = value.decode()
                    metadata[key] = value
                else:
                    metadata[splited_metadata[0]] = ""
        return metadata

    def upload_data(self, request):
        tus_request = request.headers.get('Upload-Length', None) is not None or request.method == 'OPTIONS'
        bulk_file_upload = request.headers.get('Upload-Multiple', None) is not None
        start_upload = request.headers.get('Upload-Start', None) is not None
        finish_upload = request.headers.get('Upload-Finish', None) is not None
        one_request_upload = start_upload and finish_upload
        if one_request_upload or finish_upload:
            return self.upload_finished(request)
        elif start_upload:
            return self.upload_started(request)
        elif tus_request:
            return self.init_tus_upload(request)
        elif bulk_file_upload:
            return self.append_files(request)
        else: # backward compatibility case - no upload headers were found
            return self.upload_finished(request)

    def init_tus_upload(self, request):
        if request.method == 'OPTIONS':
            return self._tus_response(status=status.HTTP_204)
        else:
            metadata = self._get_metadata(request)
            filename = metadata.get('filename', '')
            if not self.is_valid_uploaded_file_name(filename):
                return self._tus_response(status=status.HTTP_400_BAD_REQUEST,
                    data="File name {} is not allowed".format(filename))


            message_id = request.META.get("HTTP_MESSAGE_ID")
            if message_id:
                metadata["message_id"] = base64.b64decode(message_id)

            file_exists = os.path.lexists(os.path.join(self.get_upload_dir(), filename))
            if file_exists:
                return self._tus_response(status=status.HTTP_409_CONFLICT,
                    data="File with same name already exists")

            file_size = int(request.META.get("HTTP_UPLOAD_LENGTH", "0"))
            if file_size > int(self._tus_max_file_size):
                return self._tus_response(status=status.HTTP_413_REQUEST_ENTITY_TOO_LARGE,
                    data="File size exceeds max limit of {} bytes".format(self._tus_max_file_size))

            tus_file = TusFile.create_file(metadata, file_size, self.get_upload_dir())

            location = request.build_absolute_uri()
            if 'HTTP_X_FORWARDED_HOST' not in request.META:
                location = request.META.get('HTTP_ORIGIN') + request.META.get('PATH_INFO')
            return self._tus_response(
                status=status.HTTP_201_CREATED,
                extra_headers={'Location': '{}{}'.format(location, tus_file.file_id),
                               'Upload-Filename': tus_file.filename})

    def append_tus_chunk(self, request, file_id):
        if request.method == 'HEAD':
            tus_file = TusFile.get_tusfile(str(file_id), self.get_upload_dir())
            if tus_file:
                return self._tus_response(status=status.HTTP_200_OK, extra_headers={
                               'Upload-Offset': tus_file.offset,
                               'Upload-Length': tus_file.file_size})
            return self._tus_response(status=status.HTTP_404_NOT_FOUND)
        else:
            tus_file = TusFile.get_tusfile(str(file_id), self.get_upload_dir())
            chunk = TusChunk(request)

            if chunk.offset != tus_file.offset:
                return self._tus_response(status=status.HTTP_409_CONFLICT)

            if chunk.offset > tus_file.file_size:
                return self._tus_response(status=status.HTTP_413_REQUEST_ENTITY_TOO_LARGE)

            tus_file.write_chunk(chunk)

            if tus_file.is_complete():
                tus_file.rename()
                tus_file.clean()

            return self._tus_response(status=status.HTTP_204_NO_CONTENT,
                                      extra_headers={'Upload-Offset': tus_file.offset,
                                                     'Upload-Filename': tus_file.filename})

    def is_valid_uploaded_file_name(self, filename: str) -> bool:
        """
        Checks the file name to be valid.
        Returns True if the filename is valid, otherwise returns False.
        """

        upload_dir = self.get_upload_dir()
        file_path = os.path.join(upload_dir, filename)
        return os.path.commonprefix((os.path.realpath(file_path), upload_dir)) == upload_dir

    def get_upload_dir(self) -> str:
        return self._object.data.get_upload_dirname()

    def _get_request_client_files(self, request):
        serializer = DataSerializer(self._object, data=request.data)
        serializer.is_valid(raise_exception=True)
        return serializer.validated_data.get('client_files')

    def append_files(self, request):
        """
        Processes a single or multiple files sent in a single request inside
        a file uploading session.
        """

        client_files = self._get_request_client_files(request)
        if client_files:
            upload_dir = self.get_upload_dir()
            for client_file in client_files:
                filename = client_file['file'].name
                if not self.is_valid_uploaded_file_name(filename):
                    return Response(status=status.HTTP_400_BAD_REQUEST,
                        data=f"File name {filename} is not allowed", content_type="text/plain")

                with open(os.path.join(upload_dir, filename), 'ab+') as destination:
                    destination.write(client_file['file'].read())
        return Response(status=status.HTTP_200_OK)

    def upload_started(self, request):
        """
        Allows to do actions before upcoming file uploading.
        """
        return Response(status=status.HTTP_202_ACCEPTED)

    def upload_finished(self, request):
        """
        Allows to process uploaded files.
        """

        raise NotImplementedError('Must be implemented in the derived class')

class AnnotationMixin:
    def export_annotations(self, request, db_obj, export_func, callback, get_data=None):
        format_name = request.query_params.get("format", "")
        action = request.query_params.get("action", "").lower()
        filename = request.query_params.get("filename", "")

        use_default_location = request.query_params.get("use_default_location", True)
        use_settings = strtobool(str(use_default_location))
        obj = db_obj if use_settings else request.query_params
        location_conf = get_location_configuration(
            obj=obj,
            use_settings=use_settings,
            field_name=StorageType.TARGET,
        )

        object_name = self._object.__class__.__name__.lower()
        rq_id = f"export:annotations-for-{object_name}.id{self._object.pk}-in-{format_name.replace(' ', '_')}-format"

        if format_name:
            return export_func(db_instance=self._object,
                rq_id=rq_id,
                request=request,
                action=action,
                callback=callback,
                format_name=format_name,
                filename=filename,
                location_conf=location_conf,
            )

        if not get_data:
            return Response("Format is not specified",status=status.HTTP_400_BAD_REQUEST)

        data = get_data(self._object.pk)
        return Response(data)

    def import_annotations(self, request, db_obj, import_func, rq_func, rq_id):
        is_tus_request = request.headers.get('Upload-Length', None) is not None or \
            request.method == 'OPTIONS'
        if is_tus_request:
            return self.init_tus_upload(request)

        use_default_location = request.query_params.get('use_default_location', True)
        conv_mask_to_poly = strtobool(request.query_params.get('conv_mask_to_poly', 'True'))
        use_settings = strtobool(str(use_default_location))
        obj = db_obj if use_settings else request.query_params
        location_conf = get_location_configuration(
            obj=obj,
            use_settings=use_settings,
            field_name=StorageType.SOURCE,
        )

        if location_conf['location'] == Location.CLOUD_STORAGE:
            format_name = request.query_params.get('format')
            file_name = request.query_params.get('filename')

            return import_func(
                request=request,
                rq_id=rq_id,
                rq_func=rq_func,
                db_obj=self._object,
                format_name=format_name,
                location_conf=location_conf,
                filename=file_name,
                conv_mask_to_poly=conv_mask_to_poly,
            )

        return self.upload_data(request)

class SerializeMixin:
    def serialize(self, request, export_func):
        db_object = self.get_object() # force to call check_object_permissions
        return export_func(
            db_object,
            request,
            queue_name=settings.CVAT_QUEUES.EXPORT_DATA.value,
        )

    def deserialize(self, request, import_func):
        location = request.query_params.get("location", Location.LOCAL)
        if location == Location.CLOUD_STORAGE:
            file_name = request.query_params.get("filename", "")
            return import_func(
                request,
                queue_name=settings.CVAT_QUEUES.IMPORT_DATA.value,
                filename=file_name,
            )
        return self.upload_data(request)


class PartialUpdateModelMixin:
    """
    Update fields of a model instance.

    Almost the same as UpdateModelMixin, but has no public PUT / update() method.
    """

    def _update(self, request, *args, **kwargs):
        # This method must not be named "update" not to be matched with the PUT method
        return mixins.UpdateModelMixin.update(self, request, *args, **kwargs)

    def perform_update(self, serializer):
        mixins.UpdateModelMixin.perform_update(self, serializer=serializer)

    def partial_update(self, request, *args, **kwargs):
        with mock.patch.object(self, 'update', new=self._update, create=True):
            return mixins.UpdateModelMixin.partial_update(self, request=request, *args, **kwargs)
