# Copyright (C) 2018-2022 Intel Corporation
# Copyright (C) 2022-2023 CVAT.ai Corporation
#
# SPDX-License-Identifier: MIT

"""
Django settings for CVAT project.

Generated by 'django-admin startproject' using Django 2.0.1.

For more information on this file, see
https://docs.djangoproject.com/en/2.0/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/2.0/ref/settings/
"""

import mimetypes
import os
import sys
import tempfile
from datetime import timedelta
from enum import Enum
import urllib

from attr.converters import to_bool
from corsheaders.defaults import default_headers
from logstash_async.constants import constants as logstash_async_constants

from cvat import __version__

mimetypes.add_type("application/wasm", ".wasm", True)

from pathlib import Path

from django.core.exceptions import ImproperlyConfigured

# Build paths inside the project like this: os.path.join(BASE_DIR, ...)
BASE_DIR = str(Path(__file__).parents[2])

ALLOWED_HOSTS = os.environ.get('ALLOWED_HOSTS', 'localhost,127.0.0.1').split(',')
INTERNAL_IPS = ['127.0.0.1']

def generate_secret_key():
    """
    Creates secret_key.py in such a way that multiple processes calling
    this will all end up with the same key (assuming that they share the
    same "keys" directory).
    """

    from django.utils.crypto import get_random_string
    keys_dir = os.path.join(BASE_DIR, 'keys')
    if not os.path.isdir(keys_dir):
        os.mkdir(keys_dir)

    secret_key_fname = 'secret_key.py' # nosec

    with tempfile.NamedTemporaryFile(
        mode='wt', dir=keys_dir, prefix=secret_key_fname + ".",
    ) as f:
        chars = 'abcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*(-_=+)'
        f.write("SECRET_KEY = '{}'\n".format(get_random_string(50, chars)))

        # Make sure the file contents are written before we link to it
        # from the final location.
        f.flush()

        try:
            os.link(f.name, os.path.join(keys_dir, secret_key_fname))
        except FileExistsError:
            # Somebody else created the secret key first.
            # Discard ours and use theirs.
            pass

try:
    sys.path.append(BASE_DIR)
    from keys.secret_key import SECRET_KEY # pylint: disable=unused-import
except ModuleNotFoundError:
    generate_secret_key()
    from keys.secret_key import SECRET_KEY

DEFAULT_AUTO_FIELD = 'django.db.models.AutoField'
INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'django_rq',
    'compressor',
    'django_sendfile',
    "dj_rest_auth",
    'dj_rest_auth.registration',
    'dj_pagination',
    'django_filters',
    'rest_framework',
    'rest_framework.authtoken',
    'drf_spectacular',
    'django.contrib.sites',
    'allauth',
    'allauth.account',
    'corsheaders',
    'allauth.socialaccount',
    'health_check',
    'health_check.db',
    'health_check.contrib.migrations',
    'health_check.contrib.psutil',
    'cvat.apps.iam',
    'cvat.apps.dataset_manager',
    'cvat.apps.organizations',
    'cvat.apps.engine',
    'cvat.apps.dataset_repo',
    'cvat.apps.lambda_manager',
    'cvat.apps.webhooks',
    'cvat.apps.health',
    'cvat.apps.events',
    'cvat.apps.quality_control',
    'cvat.apps.analytics_report',
]

SITE_ID = 1

REST_FRAMEWORK = {
    'DEFAULT_PARSER_CLASSES': [
        'rest_framework.parsers.JSONParser',
    ],
    'DEFAULT_RENDERER_CLASSES': [
        'cvat.apps.engine.renderers.CVATAPIRenderer',
        'rest_framework.renderers.BrowsableAPIRenderer',
    ],
    'DEFAULT_PERMISSION_CLASSES': [
        'rest_framework.permissions.IsAuthenticated',
        'cvat.apps.iam.permissions.PolicyEnforcer',
    ],
    'DEFAULT_AUTHENTICATION_CLASSES': [
        'cvat.apps.iam.authentication.TokenAuthenticationEx',
        'cvat.apps.iam.authentication.SignatureAuthentication',
        'rest_framework.authentication.SessionAuthentication',
        'rest_framework.authentication.BasicAuthentication'
    ],
    'DEFAULT_VERSIONING_CLASS':
        'rest_framework.versioning.AcceptHeaderVersioning',
    'ALLOWED_VERSIONS': ('2.0'),
    'DEFAULT_VERSION': '2.0',
    'VERSION_PARAM': 'version',
    'DEFAULT_PAGINATION_CLASS':
        'cvat.apps.engine.pagination.CustomPagination',
    'PAGE_SIZE': 10,
    'DEFAULT_FILTER_BACKENDS': (
        'cvat.apps.engine.filters.SimpleFilter',
        'cvat.apps.engine.filters.SearchFilter',
        'cvat.apps.engine.filters.OrderingFilter',
        'cvat.apps.engine.filters.JsonLogicFilter',
        'cvat.apps.iam.filters.OrganizationFilterBackend',
    ),

    'SEARCH_PARAM': 'search',
    # Disable default handling of the 'format' query parameter by REST framework
    'URL_FORMAT_OVERRIDE': 'scheme',
    'DEFAULT_THROTTLE_CLASSES': [
        'rest_framework.throttling.AnonRateThrottle',
    ],
    'DEFAULT_THROTTLE_RATES': {
        'anon': '100/minute',
    },
    'DEFAULT_METADATA_CLASS': 'rest_framework.metadata.SimpleMetadata',
    'DEFAULT_SCHEMA_CLASS': 'cvat.apps.iam.schema.CustomAutoSchema',
    'EXCEPTION_HANDLER': 'cvat.apps.events.handlers.handle_viewset_exception',
}


REST_AUTH_REGISTER_SERIALIZERS = {
    'REGISTER_SERIALIZER': 'cvat.apps.iam.serializers.RegisterSerializerEx',
}

REST_AUTH_SERIALIZERS = {
    'LOGIN_SERIALIZER': 'cvat.apps.iam.serializers.LoginSerializerEx',
    'PASSWORD_RESET_SERIALIZER': 'cvat.apps.iam.serializers.PasswordResetSerializerEx',
}

if to_bool(os.getenv('CVAT_ANALYTICS', False)):
    INSTALLED_APPS += ['cvat.apps.log_viewer']

MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'corsheaders.middleware.CorsMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    # FIXME
    # 'corsheaders.middleware.CorsPostCsrfMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.middleware.gzip.GZipMiddleware',
    'cvat.apps.engine.middleware.RequestTrackingMiddleware',
    'crum.CurrentRequestUserMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
    'dj_pagination.middleware.PaginationMiddleware',
    'cvat.apps.iam.middleware.ContextMiddleware',
]

UI_URL = ''

STATICFILES_FINDERS = [
    'django.contrib.staticfiles.finders.FileSystemFinder',
    'django.contrib.staticfiles.finders.AppDirectoriesFinder',
    'compressor.finders.CompressorFinder',
]

ROOT_URLCONF = 'cvat.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',

            ],
        },
    },
]

# IAM settings
IAM_TYPE = 'BASIC'
IAM_BASE_EXCEPTION = None # a class which will be used by IAM to report errors
IAM_DEFAULT_ROLE = 'user'

IAM_ADMIN_ROLE = 'admin'
# Index in the list below corresponds to the priority (0 has highest priority)
IAM_ROLES = [IAM_ADMIN_ROLE, 'business', 'user', 'worker']
IAM_OPA_HOST = 'http://opa:8181'
IAM_OPA_DATA_URL = f'{IAM_OPA_HOST}/v1/data'
IAM_OPA_RULES_PATH = 'cvat/apps/iam/rules:'
LOGIN_URL = 'rest_login'
LOGIN_REDIRECT_URL = '/'

OBJECTS_NOT_RELATED_WITH_ORG = ['user', 'function', 'request', 'server',]

# ORG settings
ORG_INVITATION_CONFIRM = 'No'
ORG_INVITATION_EXPIRY_DAYS = 7


AUTHENTICATION_BACKENDS = [
    'django.contrib.auth.backends.ModelBackend',
    'allauth.account.auth_backends.AuthenticationBackend',
]

# https://github.com/pennersr/django-allauth
ACCOUNT_EMAIL_VERIFICATION = 'none'
ACCOUNT_AUTHENTICATION_METHOD = 'username_email'

# set UI url to redirect after a successful e-mail confirmation
#changed from '/auth/login' to '/auth/email-confirmation' for email confirmation message
ACCOUNT_EMAIL_CONFIRMATION_ANONYMOUS_REDIRECT_URL = '/auth/email-confirmation'
ACCOUNT_EMAIL_VERIFICATION_SENT_REDIRECT_URL = '/auth/email-verification-sent'
INCORRECT_EMAIL_CONFIRMATION_URL = '/auth/incorrect-email-confirmation'

OLD_PASSWORD_FIELD_ENABLED = True

# Django-RQ
# https://github.com/rq/django-rq

class CVAT_QUEUES(Enum):
    IMPORT_DATA = 'import'
    EXPORT_DATA = 'export'
    AUTO_ANNOTATION = 'annotation'
    WEBHOOKS = 'webhooks'
    NOTIFICATIONS = 'notifications'
    QUALITY_REPORTS = 'quality_reports'
    ANALYTICS_REPORTS = 'analytics_reports'
    CLEANING = 'cleaning'

redis_inmem_host = os.getenv('CVAT_REDIS_INMEM_HOST', 'localhost')
redis_inmem_port = os.getenv('CVAT_REDIS_INMEM_PORT', 6379)
redis_inmem_password = os.getenv('CVAT_REDIS_INMEM_PASSWORD', '')

shared_queue_settings = {
    'HOST': redis_inmem_host,
    'PORT': redis_inmem_port,
    'DB': 0,
    'PASSWORD': urllib.parse.quote(redis_inmem_password),
}

RQ_QUEUES = {
    CVAT_QUEUES.IMPORT_DATA.value: {
        **shared_queue_settings,
        'DEFAULT_TIMEOUT': '4h',
    },
    CVAT_QUEUES.EXPORT_DATA.value: {
        **shared_queue_settings,
        'DEFAULT_TIMEOUT': '4h',
    },
    CVAT_QUEUES.AUTO_ANNOTATION.value: {
        **shared_queue_settings,
        'DEFAULT_TIMEOUT': '24h',
    },
    CVAT_QUEUES.WEBHOOKS.value: {
        **shared_queue_settings,
        'DEFAULT_TIMEOUT': '1h',
    },
    CVAT_QUEUES.NOTIFICATIONS.value: {
        **shared_queue_settings,
        'DEFAULT_TIMEOUT': '1h',
    },
    CVAT_QUEUES.QUALITY_REPORTS.value: {
        **shared_queue_settings,
        'DEFAULT_TIMEOUT': '1h',
    },
    CVAT_QUEUES.ANALYTICS_REPORTS.value: {
        **shared_queue_settings,
        'DEFAULT_TIMEOUT': '1h',
    },
    CVAT_QUEUES.CLEANING.value: {
        **shared_queue_settings,
        'DEFAULT_TIMEOUT': '1h',
    },
}

NUCLIO = {
    'SCHEME': os.getenv('CVAT_NUCLIO_SCHEME', 'http'),
    'HOST': os.getenv('CVAT_NUCLIO_HOST', 'localhost'),
    'PORT': int(os.getenv('CVAT_NUCLIO_PORT', 8070)),
    'DEFAULT_TIMEOUT': int(os.getenv('CVAT_NUCLIO_DEFAULT_TIMEOUT', 120)),
    'FUNCTION_NAMESPACE': os.getenv('CVAT_NUCLIO_FUNCTION_NAMESPACE', 'nuclio'),
    'INVOKE_METHOD': os.getenv('CVAT_NUCLIO_INVOKE_METHOD',
        default='dashboard' if 'KUBERNETES_SERVICE_HOST' in os.environ else 'direct'),
}

assert NUCLIO['INVOKE_METHOD'] in {'dashboard', 'direct'}

RQ_SHOW_ADMIN_LINK = True
RQ_EXCEPTION_HANDLERS = [
    'cvat.apps.engine.views.rq_exception_handler',
    'cvat.apps.events.handlers.handle_rq_exception',
]

# JavaScript and CSS compression
# https://django-compressor.readthedocs.io

COMPRESS_CSS_FILTERS = [
    'compressor.filters.css_default.CssAbsoluteFilter',
    'compressor.filters.cssmin.rCSSMinFilter'
]
COMPRESS_JS_FILTERS = []  # No compression for js files (template literals were compressed bad)

# Password validation
# https://docs.djangoproject.com/en/2.0/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]

# Internationalization
# https://docs.djangoproject.com/en/2.0/topics/i18n/

LANGUAGE_CODE = 'en-us'

TIME_ZONE = os.getenv('TZ', 'Etc/UTC')

USE_I18N = True

USE_L10N = True

USE_TZ = True

CSRF_COOKIE_NAME = "csrftoken"

# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/2.0/howto/static-files/

STATIC_URL = '/static/'
STATIC_ROOT = os.path.join(BASE_DIR, 'static')
os.makedirs(STATIC_ROOT, exist_ok=True)

# Make sure to update other config files when updating these directories
DATA_ROOT = os.path.join(BASE_DIR, 'data')

MEDIA_DATA_ROOT = os.path.join(DATA_ROOT, 'data')
os.makedirs(MEDIA_DATA_ROOT, exist_ok=True)

CACHE_ROOT = os.path.join(DATA_ROOT, 'cache')
os.makedirs(CACHE_ROOT, exist_ok=True)

EVENTS_LOCAL_DB_ROOT = os.path.join(CACHE_ROOT, 'events')
os.makedirs(EVENTS_LOCAL_DB_ROOT, exist_ok=True)
EVENTS_LOCAL_DB_FILE = os.path.join(
    EVENTS_LOCAL_DB_ROOT,
    os.getenv('CVAT_EVENTS_LOCAL_DB_FILENAME', 'events.db'),
)
if not os.path.exists(EVENTS_LOCAL_DB_FILE):
    open(EVENTS_LOCAL_DB_FILE, 'w').close()

JOBS_ROOT = os.path.join(DATA_ROOT, 'jobs')
os.makedirs(JOBS_ROOT, exist_ok=True)

TASKS_ROOT = os.path.join(DATA_ROOT, 'tasks')
os.makedirs(TASKS_ROOT, exist_ok=True)

PROJECTS_ROOT = os.path.join(DATA_ROOT, 'projects')
os.makedirs(PROJECTS_ROOT, exist_ok=True)

ASSETS_ROOT = os.path.join(DATA_ROOT, 'assets')
os.makedirs(ASSETS_ROOT, exist_ok=True)

SHARE_ROOT = os.path.join(BASE_DIR, 'share')
os.makedirs(SHARE_ROOT, exist_ok=True)

MODELS_ROOT = os.path.join(DATA_ROOT, 'models')
os.makedirs(MODELS_ROOT, exist_ok=True)

LOGS_ROOT = os.path.join(BASE_DIR, 'logs')
os.makedirs(LOGS_ROOT, exist_ok=True)

MIGRATIONS_LOGS_ROOT = os.path.join(LOGS_ROOT, 'migrations')
os.makedirs(MIGRATIONS_LOGS_ROOT, exist_ok=True)

CLOUD_STORAGE_ROOT = os.path.join(DATA_ROOT, 'storages')
os.makedirs(CLOUD_STORAGE_ROOT, exist_ok=True)

TMP_FILES_ROOT = os.path.join(DATA_ROOT, 'tmp')
os.makedirs(TMP_FILES_ROOT, exist_ok=True)

IAM_OPA_BUNDLE_PATH = os.path.join(STATIC_ROOT, 'opa', 'bundle.tar.gz')
os.makedirs(Path(IAM_OPA_BUNDLE_PATH).parent, exist_ok=True)

# logging is known to be unreliable with RQ when using async transports
vector_log_handler = os.getenv('VECTOR_EVENT_HANDLER', 'AsynchronousLogstashHandler')

logstash_async_constants.QUEUED_EVENTS_FLUSH_INTERVAL = 2.0
LOGGING = {
    'version': 1,
    'disable_existing_loggers': False,
    'formatters': {
        'vector': {
            'format': '%(message)s',
        },
        'standard': {
            'format': '[%(asctime)s] %(levelname)s %(name)s: %(message)s'
        }
    },
    'handlers': {
        'console': {
            'class': 'logging.StreamHandler',
            'filters': [],
            'formatter': 'standard',
        },
        'server_file': {
            'class': 'logging.handlers.RotatingFileHandler',
            'level': 'DEBUG',
            'filename': os.path.join(BASE_DIR, 'logs', 'cvat_server.log'),
            'formatter': 'standard',
            'maxBytes': 1024*1024*50, # 50 MB
            'backupCount': 5,
        },
        'vector': {
            'level': 'INFO',
            'class': f'logstash_async.handler.{vector_log_handler}',
            'formatter': 'vector',
            'transport': 'logstash_async.transport.HttpTransport',
            'ssl_enable': False,
            'ssl_verify': False,
            'host': os.getenv('DJANGO_LOG_SERVER_HOST', 'localhost'),
            'port': os.getenv('DJANGO_LOG_SERVER_PORT', 8282),
            'version': 1,
            'message_type': 'django',
            'database_path': EVENTS_LOCAL_DB_FILE,
        }
    },
    'root': {
        'handlers': ['console', 'server_file'],
    },
    'loggers': {
        'cvat': {
            'level': os.getenv('DJANGO_LOG_LEVEL', 'DEBUG'),
        },

        'django': {
            'level': 'INFO',
        },

        'vector': {
            'handlers': [],
            'level': 'INFO',
            # set True for debug
            'propagate': False
        }
    },
}

if os.getenv('DJANGO_LOG_SERVER_HOST'):
    LOGGING['loggers']['vector']['handlers'] += ['vector']

DATA_UPLOAD_MAX_MEMORY_SIZE = 100 * 1024 * 1024  # 100 MB
DATA_UPLOAD_MAX_NUMBER_FIELDS = None   # this django check disabled
DATA_UPLOAD_MAX_NUMBER_FILES = None

RESTRICTIONS = {
    # allow access to analytics component to users with business role
    # otherwise, only the administrator has access
    'analytics_visibility': True,
}

redis_ondisk_host = os.getenv('CVAT_REDIS_ONDISK_HOST', 'localhost')
# The default port is not Redis's default port (6379).
# This is so that a developer can run both in-mem and on-disk Redis on their machine
# without running into a port conflict.
redis_ondisk_port = os.getenv('CVAT_REDIS_ONDISK_PORT', 6666)
redis_ondisk_password = os.getenv('CVAT_REDIS_ONDISK_PASSWORD', '')

CACHES = {
   'default': {
        'BACKEND': 'django.core.cache.backends.locmem.LocMemCache',
    },
    'media': {
       'BACKEND' : 'django.core.cache.backends.redis.RedisCache',
       "LOCATION": f"redis://:{urllib.parse.quote(redis_ondisk_password)}@{redis_ondisk_host}:{redis_ondisk_port}",
       'TIMEOUT' : 3600 * 24, # 1 day
    }
}

USE_CACHE = True

CORS_ALLOW_HEADERS = list(default_headers) + [
    # tus upload protocol headers
    'upload-offset',
    'upload-length',
    'tus-version',
    'tus-resumable',

    # extended upload protocol headers
    'upload-start',
    'upload-finish',
    'upload-multiple',
    'x-organization',
]

TUS_MAX_FILE_SIZE = 26843545600 # 25gb
TUS_DEFAULT_CHUNK_SIZE = 104857600  # 100 mb

# This setting makes request secure if X-Forwarded-Proto: 'https' header is specified by our proxy
# More about forwarded headers - https://doc.traefik.io/traefik/getting-started/faq/#what-are-the-forwarded-headers-when-proxying-http-requests
# How django uses X-Forwarded-Proto - https://docs.djangoproject.com/en/2.2/ref/settings/#secure-proxy-ssl-header
SECURE_PROXY_SSL_HEADER = ('HTTP_X_FORWARDED_PROTO', 'https')

# Forwarded host - https://docs.djangoproject.com/en/4.0/ref/settings/#std:setting-USE_X_FORWARDED_HOST
# Is used in TUS uploads to provide correct upload endpoint
USE_X_FORWARDED_HOST = True

# Django-sendfile requires to set SENDFILE_ROOT
# https://github.com/moggers87/django-sendfile2
SENDFILE_ROOT = BASE_DIR

SPECTACULAR_SETTINGS = {
    'TITLE': 'CVAT REST API',
    'DESCRIPTION': 'REST API for Computer Vision Annotation Tool (CVAT)',
    # Statically set schema version. May also be an empty string. When used together with
    # view versioning, will become '0.0.0 (v2)' for 'v2' versioned requests.
    # Set VERSION to None if only the request version should be rendered.
    'VERSION': __version__,
    'CONTACT': {
        'name': 'CVAT.ai team',
        'url': 'https://github.com/cvat-ai/cvat',
        'email': 'support@cvat.ai',
    },
    'LICENSE': {
        'name': 'MIT License',
        'url': 'https://en.wikipedia.org/wiki/MIT_License',
    },

    'SERVE_PUBLIC': True,
    'SERVE_PERMISSIONS': ['rest_framework.permissions.IsAuthenticated'],

    # https://swagger.io/docs/open-source-tools/swagger-ui/usage/configuration/
    'SWAGGER_UI_SETTINGS': {
        'deepLinking': True,
        'displayOperationId': True,
        'displayRequestDuration': True,
        'filter': True,
        'showExtensions': True,
    },
    'TOS': 'https://www.google.com/policies/terms/',
    'EXTERNAL_DOCS': {
        'description': 'CVAT documentation',
        'url': 'https://opencv.github.io/cvat/docs/',
    },
    # OTHER SETTINGS
    # https://drf-spectacular.readthedocs.io/en/latest/settings.html

    # TODO: Our current implementation does not suppose this.
    # Need to reconsider this later. It happens, for example,
    # in TaskSerializer for data-originated fields - they can be empty.
    # https://github.com/tfranzel/drf-spectacular/issues/54
    'COMPONENT_NO_READ_ONLY_REQUIRED': True,

    # Required for correct file upload type (bytes)
    'COMPONENT_SPLIT_REQUEST': True,

    'ENUM_NAME_OVERRIDES': {
        'ShapeType': 'cvat.apps.engine.models.ShapeType',
        'OperationStatus': 'cvat.apps.engine.models.StateChoice',
        'ChunkType': 'cvat.apps.engine.models.DataChoice',
        'StorageMethod': 'cvat.apps.engine.models.StorageMethodChoice',
        'JobStatus': 'cvat.apps.engine.models.StatusChoice',
        'JobStage': 'cvat.apps.engine.models.StageChoice',
        'JobType': 'cvat.apps.engine.models.JobType',
        'QualityReportTarget': 'cvat.apps.quality_control.models.QualityReportTarget',
        'StorageType': 'cvat.apps.engine.models.StorageChoice',
        'SortingMethod': 'cvat.apps.engine.models.SortingMethod',
        'WebhookType': 'cvat.apps.webhooks.models.WebhookTypeChoice',
        'WebhookContentType': 'cvat.apps.webhooks.models.WebhookContentTypeChoice',
    },

    # Coercion of {pk} to {id} is controlled by SCHEMA_COERCE_PATH_PK. Additionally,
    # some libraries (e.g. drf-nested-routers) use "_pk" suffixed path variables.
    # This setting globally coerces path variables like "{user_pk}" to "{user_id}".
    'SCHEMA_COERCE_PATH_PK_SUFFIX': True,
    'SCHEMA_PATH_PREFIX': '/api',
    'SCHEMA_PATH_PREFIX_TRIM': False,
    'GENERIC_ADDITIONAL_PROPERTIES': None,
}

# set similar UI restrictions
# https://github.com/opencv/cvat/blob/bad1dc2799afbb22222faaecc7336d999f4cc3fe/cvat-ui/src/utils/validation-patterns.ts#L26
ACCOUNT_USERNAME_MIN_LENGTH = 5
ACCOUNT_LOGOUT_ON_PASSWORD_CHANGE = True

ACCOUNT_ADAPTER = 'cvat.apps.iam.adapters.DefaultAccountAdapterEx'

CVAT_HOST = os.getenv('CVAT_HOST', 'localhost')
CVAT_BASE_URL = os.getenv('CVAT_BASE_URL', f'http://{CVAT_HOST}:8080').rstrip('/')

CLICKHOUSE = {
    'events': {
        'NAME': os.getenv('CLICKHOUSE_DB', 'cvat'),
        'HOST': os.getenv('CLICKHOUSE_HOST', 'localhost'),
        'PORT': os.getenv('CLICKHOUSE_PORT', 8123),
        'USER': os.getenv('CLICKHOUSE_USER', 'user'),
        'PASSWORD': os.getenv('CLICKHOUSE_PASSWORD', 'user'),
    }
}

if (postgres_password_file := os.getenv('CVAT_POSTGRES_PASSWORD_FILE')) is not None:
    if 'CVAT_POSTGRES_PASSWORD' in os.environ:
        raise ImproperlyConfigured(
            'The CVAT_POSTGRES_PASSWORD and CVAT_POSTGRES_PASSWORD_FILE'
            ' environment variables must not be set at the same time'
        )

    postgres_password = Path(postgres_password_file).read_text(encoding='UTF-8').rstrip('\n')
else:
    postgres_password = os.getenv('CVAT_POSTGRES_PASSWORD', '')

# Database
# https://docs.djangoproject.com/en/3.2/ref/settings/#databases
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'HOST': os.getenv('CVAT_POSTGRES_HOST', 'cvat_db'),
        'NAME': os.getenv('CVAT_POSTGRES_DBNAME', 'cvat'),
        'USER': os.getenv('CVAT_POSTGRES_USER', 'root'),
        'PASSWORD': postgres_password,
        'PORT': os.getenv('CVAT_POSTGRES_PORT', 5432),
    }
}

BUCKET_CONTENT_MAX_PAGE_SIZE =  500

IMPORT_CACHE_FAILED_TTL = timedelta(days=90)
IMPORT_CACHE_SUCCESS_TTL = timedelta(hours=1)
IMPORT_CACHE_CLEAN_DELAY = timedelta(hours=12)

ASSET_MAX_SIZE_MB = 10
ASSET_SUPPORTED_TYPES = ('image/jpeg', 'image/png', 'image/webp', 'image/gif', 'application/pdf', )
ASSET_MAX_IMAGE_SIZE = 1920
ASSET_MAX_COUNT_PER_GUIDE = 30

SMOKESCREEN_ENABLED = True

# By default, email backend is django.core.mail.backends.smtp.EmailBackend
# But it won't work without additional configuration, so we set it to None
# to check configuration and throw ImproperlyConfigured if thats a case
EMAIL_BACKEND = None

ONE_RUNNING_JOB_IN_QUEUE_PER_USER = to_bool(os.getenv('ONE_RUNNING_JOB_IN_QUEUE_PER_USER', False))

# How many chunks can be prepared simultaneously during task creation in case the cache is not used
CVAT_CONCURRENT_CHUNK_PROCESSING = int(os.getenv('CVAT_CONCURRENT_CHUNK_PROCESSING', 1))

from cvat.rq_patching import update_started_job_registry_cleanup
update_started_job_registry_cleanup()
