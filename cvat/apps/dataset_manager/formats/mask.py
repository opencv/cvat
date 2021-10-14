# Copyright (C) 2019 Intel Corporation
#
# SPDX-License-Identifier: MIT

from tempfile import TemporaryDirectory

from datumaro.components.dataset import Dataset
from pyunpack import Archive

from cvat.apps.dataset_manager.bindings import (GetCVATDataExtractor,
    import_dm_annotations)
from cvat.apps.dataset_manager.util import make_zip_archive

from .registry import dm_env, exporter, importer
from .utils import make_colormap


@exporter(name='Segmentation mask', ext='ZIP', version='1.1')
def _export(dst_file, instance_data, save_images=False):
    dataset = Dataset.from_extractors(GetCVATDataExtractor(
        instance_data, include_images=save_images), env=dm_env)
    dataset.transform('polygons_to_masks')
    dataset.transform('boxes_to_masks')
    dataset.transform('merge_instance_segments')
    with TemporaryDirectory() as temp_dir:
        dataset.export(temp_dir, 'voc_segmentation', save_images=save_images,
            apply_colormap=True, label_map=make_colormap(instance_data))

        make_zip_archive(temp_dir, dst_file)

@importer(name='Segmentation mask', ext='ZIP', version='1.1')
def _import(src_file, instance_data, load_data_callback=None):
    with TemporaryDirectory() as tmp_dir:
        Archive(src_file.name).extractall(tmp_dir)

        dataset = Dataset.import_from(tmp_dir, 'voc', env=dm_env)
        dataset.transform('masks_to_polygons')
        if load_data_callback is not None:
            load_data_callback(dataset, instance_data)
        import_dm_annotations(dataset, instance_data)
