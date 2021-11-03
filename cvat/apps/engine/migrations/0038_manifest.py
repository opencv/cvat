# Generated by Django 3.1.1 on 2021-02-20 08:36

import glob
import itertools
import os
from re import search

from django.conf import settings
from django.db import migrations

from cvat.apps.engine.log import get_logger
from cvat.apps.engine.models import (DimensionType, StorageChoice,
                                     StorageMethodChoice)
from cvat.apps.engine.media_extractors import get_mime
from utils.dataset_manifest import ImageManifestManager, VideoManifestManager

MIGRATION_NAME = os.path.splitext(os.path.basename(__file__))[0]
MIGRATION_LOG = os.path.join(settings.MIGRATIONS_LOGS_ROOT, f"{MIGRATION_NAME}.log")

def _get_query_set(apps):
    Data = apps.get_model("engine", "Data")
    query_set = Data.objects.filter(storage_method=StorageMethodChoice.CACHE)
    return query_set

def migrate2meta(apps, shema_editor):
    logger = get_logger(MIGRATION_NAME, MIGRATION_LOG)
    query_set = _get_query_set(apps)
    for db_data in query_set:
        try:
            upload_dir = '{}/{}/raw'.format(settings.MEDIA_DATA_ROOT, db_data.id)
            logger.info('Migrate data({}), folder - {}'.format(db_data.id, upload_dir))
            meta_path = os.path.join(upload_dir, "meta_info.txt")
            if os.path.exists(os.path.join(upload_dir, 'manifest.jsonl')):
                os.remove(os.path.join(upload_dir, 'manifest.jsonl'))
                logger.info('A manifest file has been deleted')
            if os.path.exists(os.path.join(upload_dir, 'index.json')):
                os.remove(os.path.join(upload_dir, 'index.json'))
                logger.info('A manifest index file has been deleted')
            data_dir = upload_dir if db_data.storage == StorageChoice.LOCAL else settings.SHARE_ROOT
            if hasattr(db_data, 'video'):
                if os.path.exists(meta_path):
                    logger.info('A meta_info.txt already exists')
                    continue
                media_file = os.path.join(data_dir, db_data.video.path)
                logger.info('Preparing of the video meta has begun')
                manifest = VideoManifestManager(manifest_path=upload_dir)
                manifest.link(media_file=media_file, force=True)
                manifest.init_index()
                with open(meta_path, "w") as meta_file:
                    for idx, pts, _ in manifest.reader:
                        meta_file.write(f"{idx} {pts}\n")
            else:
                name_format = "dummy_{}.txt"
                sources = [db_image.path for db_image in db_data.images.all().order_by('frame')]
                counter = itertools.count()
                logger.info('Preparing of the dummy chunks has begun')
                for idx, img_paths in itertools.groupby(sources, lambda x: next(counter) // db_data.chunk_size):
                    if os.path.exists(os.path.join(upload_dir, name_format.format(idx))):
                        logger.info(name_format.format(idx) + " already exists")
                        continue
                    with open(os.path.join(upload_dir, name_format.format(idx)), "w") as dummy_chunk:
                        dummy_chunk.writelines([f"{img_path}\n" for img_path in img_paths])
            logger.info('Succesfull migration for the data({})'.format(db_data.id))
        except Exception as ex:
            logger.error(str(ex))

def migrate2manifest(apps, shema_editor):
    logger = get_logger(MIGRATION_NAME, MIGRATION_LOG)
    logger.info('The data migration has been started for creating manifest`s files')
    query_set = _get_query_set(apps)
    logger.info('Need to update {} data objects'.format(len(query_set)))
    for db_data in query_set:
        try:
            upload_dir = '{}/{}/raw'.format(settings.MEDIA_DATA_ROOT, db_data.id)
            logger.info('Migrate data({}), folder - {}'.format(db_data.id, upload_dir))
            if os.path.exists(os.path.join(upload_dir, 'meta_info.txt')):
                os.remove(os.path.join(upload_dir, 'meta_info.txt'))
                logger.info('{}/meta_info.txt has been deleted'.format(upload_dir))
            else:
                for path in glob.glob(f'{upload_dir}/dummy_*.txt'):
                    os.remove(path)
                    logger.info(f"{path} has been deleted")
            # it's necessary for case with long data migration
            if os.path.exists(os.path.join(upload_dir, 'manifest.jsonl')):
                logger.info('Manifest file already exists')
                continue
            data_dir = upload_dir if db_data.storage == StorageChoice.LOCAL else settings.SHARE_ROOT
            if hasattr(db_data, 'video'):
                media_file = os.path.join(data_dir, db_data.video.path)
                manifest = VideoManifestManager(manifest_path=upload_dir)
                manifest.link(media_file=media_file, force=True)
                logger.info('Manifest creating has begun')
                manifest.create()
            else:
                manifest = ImageManifestManager(manifest_path=upload_dir)
                sources = []
                if db_data.storage == StorageChoice.LOCAL:
                    for (root, _, files) in os.walk(data_dir):
                        sources.extend([os.path.join(root, f) for f in files if get_mime(f) == 'image'])
                    sources.sort()
                # using share, this means that we can not explicitly restore the entire data structure
                else:
                    sources = [os.path.join(data_dir, db_image.path) for db_image in db_data.images.all().order_by('frame')]
                if any(list(filter(lambda x: x.dimension==DimensionType.DIM_3D, db_data.tasks.all()))):
                    logger.info('Preparing of images 3d meta information has begun')
                    manifest.link(sources=sources, data_dir=data_dir, DIM_3D=True)
                else:
                    logger.info('Preparing of 2d images meta information has begun')
                    manifest.link(sources=sources, data_dir=data_dir)

                if db_data.storage == StorageChoice.SHARE:
                    def _get_frame_step(str_):
                        match = search("step\s*=\s*([1-9]\d*)", str_)
                        return int(match.group(1)) if match else 1
                    logger.info('Data is located on the share, metadata update has been started')
                    manifest.step = _get_frame_step(db_data.frame_filter)
                    manifest.start = db_data.start_frame
                    manifest.stop = db_data.stop_frame + 1
                logger.info('Manifest creating has begun')
                manifest.create()
            logger.info('Succesfull migration for the data({})'.format(db_data.id))
        except Exception as ex:
            logger.error(str(ex))

class Migration(migrations.Migration):

    dependencies = [
        ('engine', '0037_task_subset'),
    ]

    operations = [
        migrations.RunPython(
            code=migrate2manifest,
            reverse_code=migrate2meta
        )
    ]
