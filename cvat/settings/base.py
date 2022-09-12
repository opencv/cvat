# Copyright (C) 2018-2022 Intel Corporation
# Copyright (C) 2022 CVAT.ai Corporation
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

import os
import sys
import fcntl
import shutil
import subprocess
import mimetypes
from corsheaders.defaults import default_headers
from distutils.util import strtobool
from cvat import __version__

mimetypes.add_type("application/wasm", ".wasm", True)

from pathlib import Path

# Build paths inside the project like this: os.path.join(BASE_DIR, ...)
BASE_DIR = str(Path(__file__).parents[2])

ALLOWED_HOSTS = os.environ.get('ALLOWED_HOSTS', 'localhost,127.0.0.1').split(',')
INTERNAL_IPS = ['127.0.0.1']

try:
    sys.path.append(BASE_DIR)
    from keys.secret_key import SECRET_KEY # pylint: disable=unused-import
except ImportError:

    from django.utils.crypto import get_random_string
    keys_dir = os.path.join(BASE_DIR, 'keys')
    if not os.path.isdir(keys_dir):
        os.mkdir(keys_dir)
    with open(os.path.join(keys_dir, 'secret_key.py'), 'w') as f:
        chars = 'abcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*(-_=+)'
        f.write("SECRET_KEY = '{}'\n".format(get_random_string(50, chars)))
    from keys.secret_key import SECRET_KEY


def generate_ssh_keys():
    keys_dir = '{}/keys'.format(os.getcwd())
    ssh_dir = '{}/.ssh'.format(os.getenv('HOME'))
    pidfile = os.path.join(ssh_dir, 'ssh.pid')

    def add_ssh_keys():
        IGNORE_FILES = ('README.md', 'ssh.pid')
        keys_to_add = [entry.name for entry in os.scandir(ssh_dir) if entry.name not in IGNORE_FILES]
        keys_to_add = ' '.join(os.path.join(ssh_dir, f) for f in keys_to_add)
        subprocess.run(['ssh-add {}'.format(keys_to_add)], # nosec
            shell=True,
            stderr = subprocess.PIPE,
            # lets set the timeout if ssh-add requires a input passphrase for key
            # otherwise the process will be freezed
            timeout=30,
            )

    with open(pidfile, "w") as pid:
        fcntl.flock(pid, fcntl.LOCK_EX)
        try:
            add_ssh_keys()
            keys = subprocess.run(['ssh-add', '-l'], # nosec
                stdout = subprocess.PIPE).stdout.decode('utf-8').split('\n')
            if 'has no identities' in keys[0]:
                print('SSH keys were not found')
                volume_keys = os.listdir(keys_dir)
                if not ('id_rsa' in volume_keys and 'id_rsa.pub' in volume_keys):
                    print('New pair of keys are being generated')
                    subprocess.run(['ssh-keygen -b 4096 -t rsa -f {}/id_rsa -q -N ""'.format(ssh_dir)], shell=True) # nosec
                    shutil.copyfile('{}/id_rsa'.format(ssh_dir), '{}/id_rsa'.format(keys_dir))
                    shutil.copymode('{}/id_rsa'.format(ssh_dir), '{}/id_rsa'.format(keys_dir))
                    shutil.copyfile('{}/id_rsa.pub'.format(ssh_dir), '{}/id_rsa.pub'.format(keys_dir))
                    shutil.copymode('{}/id_rsa.pub'.format(ssh_dir), '{}/id_rsa.pub'.format(keys_dir))
                else:
                    print('Copying them from keys volume')
                    shutil.copyfile('{}/id_rsa'.format(keys_dir), '{}/id_rsa'.format(ssh_dir))
                    shutil.copymode('{}/id_rsa'.format(keys_dir), '{}/id_rsa'.format(ssh_dir))
                    shutil.copyfile('{}/id_rsa.pub'.format(keys_dir), '{}/id_rsa.pub'.format(ssh_dir))
                    shutil.copymode('{}/id_rsa.pub'.format(keys_dir), '{}/id_rsa.pub'.format(ssh_dir))
                subprocess.run(['ssh-add', '{}/id_rsa'.format(ssh_dir)]) # nosec
        finally:
            fcntl.flock(pid, fcntl.LOCK_UN)

try:
    if os.getenv("SSH_AUTH_SOCK", None):
        generate_ssh_keys()
except Exception as ex:
    print(str(ex))

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
    'dj_pagination',
    'rest_framework',
    'rest_framework.authtoken',
    'drf_spectacular',
    'dj_rest_auth',
    'django.contrib.sites',
    'allauth',
    'allauth.account',
    'corsheaders',
    'allauth.socialaccount',
    'dj_rest_auth.registration',
    'cvat.apps.iam',
    'cvat.apps.dataset_manager',
    'cvat.apps.organizations',
    'cvat.apps.engine',
    'cvat.apps.dataset_repo',
    'cvat.apps.restrictions',
    'cvat.apps.lambda_manager',
    'cvat.apps.opencv',
]

SITE_ID = 1

REST_FRAMEWORK = {
    'DEFAULT_PARSER_CLASSES': [
        'rest_framework.parsers.JSONParser',
        'rest_framework.parsers.FormParser',
        'rest_framework.parsers.MultiPartParser',
        'cvat.apps.engine.parsers.TusUploadParser',
    ],
    'DEFAULT_RENDERER_CLASSES': [
        'cvat.apps.engine.renderers.CVATAPIRenderer',
        'rest_framework.renderers.BrowsableAPIRenderer',
    ],
    'DEFAULT_PERMISSION_CLASSES': [
        'rest_framework.permissions.IsAuthenticated',
        'cvat.apps.iam.permissions.IsMemberInOrganization',
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
        'cvat.apps.engine.filters.SearchFilter',
        'cvat.apps.engine.filters.OrderingFilter',
        'cvat.apps.engine.filters.JsonLogicFilter',
        'cvat.apps.iam.filters.OrganizationFilterBackend'),

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
}

REST_AUTH_REGISTER_SERIALIZERS = {
    'REGISTER_SERIALIZER': 'cvat.apps.restrictions.serializers.RestrictedRegisterSerializer',
}

REST_AUTH_SERIALIZERS = {
    'PASSWORD_RESET_SERIALIZER': 'cvat.apps.iam.serializers.PasswordResetSerializerEx',
}

if strtobool(os.getenv('CVAT_ANALYTICS', '0')):
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
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
    'dj_pagination.middleware.PaginationMiddleware',
    'cvat.apps.iam.views.ContextMiddleware',
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

WSGI_APPLICATION = 'cvat.wsgi.application'

# IAM settings
IAM_TYPE = 'BASIC'
IAM_DEFAULT_ROLES = ['user']
IAM_ADMIN_ROLE = 'admin'
# Index in the list below corresponds to the priority (0 has highest priority)
IAM_ROLES = [IAM_ADMIN_ROLE, 'business', 'user', 'worker']
IAM_OPA_DATA_URL = 'http://opa:8181/v1/data'
LOGIN_URL = 'rest_login'
LOGIN_REDIRECT_URL = '/'

# ORG settings
ORG_INVITATION_CONFIRM = 'No'


AUTHENTICATION_BACKENDS = [
    'django.contrib.auth.backends.ModelBackend',
    'allauth.account.auth_backends.AuthenticationBackend',
]

# https://github.com/pennersr/django-allauth
ACCOUNT_EMAIL_VERIFICATION = 'none'
# set UI url to redirect after a successful e-mail confirmation
#changed from '/auth/login' to '/auth/email-confirmation' for email confirmation message
ACCOUNT_EMAIL_CONFIRMATION_ANONYMOUS_REDIRECT_URL = '/auth/email-confirmation'

OLD_PASSWORD_FIELD_ENABLED = True

# Django-RQ
# https://github.com/rq/django-rq

RQ_QUEUES = {
    'default': {
        'HOST': 'localhost',
        'PORT': 6379,
        'DB': 0,
        'DEFAULT_TIMEOUT': '4h'
    },
    'low': {
        'HOST': 'localhost',
        'PORT': 6379,
        'DB': 0,
        'DEFAULT_TIMEOUT': '24h'
    }
}

NUCLIO = {
    'SCHEME': os.getenv('CVAT_NUCLIO_SCHEME', 'http'),
    'HOST': os.getenv('CVAT_NUCLIO_HOST', 'localhost'),
    'PORT': os.getenv('CVAT_NUCLIO_PORT', 8070),
    'DEFAULT_TIMEOUT': os.getenv('CVAT_NUCLIO_DEFAULT_TIMEOUT', 120),
    'FUNCTION_NAMESPACE': os.getenv('CVAT_NUCLIO_FUNCTION_NAMESPACE', 'nuclio'),
}

RQ_SHOW_ADMIN_LINK = True
RQ_EXCEPTION_HANDLERS = ['cvat.apps.engine.views.rq_handler']


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

# Make sure to update other config files when upading these directories
DATA_ROOT = os.path.join(BASE_DIR, 'data')
LOGSTASH_DB = os.path.join(DATA_ROOT,'logstash.db')
os.makedirs(DATA_ROOT, exist_ok=True)
if not os.path.exists(LOGSTASH_DB):
    open(LOGSTASH_DB, 'w').close()

MEDIA_DATA_ROOT = os.path.join(DATA_ROOT, 'data')
os.makedirs(MEDIA_DATA_ROOT, exist_ok=True)

CACHE_ROOT = os.path.join(DATA_ROOT, 'cache')
os.makedirs(CACHE_ROOT, exist_ok=True)

JOBS_ROOT = os.path.join(DATA_ROOT, 'jobs')
os.makedirs(JOBS_ROOT, exist_ok=True)

TASKS_ROOT = os.path.join(DATA_ROOT, 'tasks')
os.makedirs(TASKS_ROOT, exist_ok=True)

PROJECTS_ROOT = os.path.join(DATA_ROOT, 'projects')
os.makedirs(PROJECTS_ROOT, exist_ok=True)

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

LOGGING = {
    'version': 1,
    'disable_existing_loggers': False,
    'formatters': {
        'logstash': {
            '()': 'logstash_async.formatter.DjangoLogstashFormatter',
            'message_type': 'python-logstash',
            'fqdn': False, # Fully qualified domain name. Default value: false.
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
        'logstash': {
            'level': 'INFO',
            'class': 'logstash_async.handler.AsynchronousLogstashHandler',
            'formatter': 'logstash',
            'transport': 'logstash_async.transport.HttpTransport',
            'ssl_enable': False,
            'ssl_verify': False,
            'host': os.getenv('DJANGO_LOG_SERVER_HOST', 'localhost'),
            'port': os.getenv('DJANGO_LOG_SERVER_PORT', 8080),
            'version': 1,
            'message_type': 'django',
            'database_path': LOGSTASH_DB,
        }
    },
    'loggers': {
        'cvat.server': {
            'handlers': ['console', 'server_file'],
            'level': os.getenv('DJANGO_LOG_LEVEL', 'DEBUG'),
        },

        'cvat.client': {
            'handlers': [],
            'level': os.getenv('DJANGO_LOG_LEVEL', 'DEBUG'),
        },
        'django': {
            'handlers': ['console', 'server_file'],
            'level': 'INFO',
            'propagate': True
        }
    },
}

if os.getenv('DJANGO_LOG_SERVER_HOST'):
    LOGGING['loggers']['cvat.server']['handlers'] += ['logstash']
    LOGGING['loggers']['cvat.client']['handlers'] += ['logstash']

DATA_UPLOAD_MAX_MEMORY_SIZE = 100 * 1024 * 1024  # 100 MB
DATA_UPLOAD_MAX_NUMBER_FIELDS = None   # this django check disabled
LOCAL_LOAD_MAX_FILES_COUNT = 500
LOCAL_LOAD_MAX_FILES_SIZE = 512 * 1024 * 1024  # 512 MB

RESTRICTIONS = {
    'user_agreements': [],

    # this setting reduces task visibility to owner and assignee only
    'reduce_task_visibility': False,

    # allow access to analytics component to users with business role
    # otherwise, only the administrator has access
    'analytics_visibility': True,
}

# http://www.grantjenks.com/docs/diskcache/tutorial.html#djangocache
CACHES = {
   'default' : {
       'BACKEND' : 'diskcache.DjangoCache',
       'LOCATION' : CACHE_ROOT,
       'TIMEOUT' : None,
       'OPTIONS' : {
            'size_limit' : 2 ** 40, # 1 Tb
       }
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
        'StorageType': 'cvat.apps.engine.models.StorageChoice',
        'SortingMethod': 'cvat.apps.engine.models.SortingMethod',
    },

    # Coercion of {pk} to {id} is controlled by SCHEMA_COERCE_PATH_PK. Additionally,
    # some libraries (e.g. drf-nested-routers) use "_pk" suffixed path variables.
    # This setting globally coerces path variables like "{user_pk}" to "{user_id}".
    'SCHEMA_COERCE_PATH_PK_SUFFIX': True,
    'SCHEMA_PATH_PREFIX': '/api',
    'SCHEMA_PATH_PREFIX_TRIM': False,
}
