# flake8: noqa

# Import all APIs into this package.
# If you have many APIs here with many many models used in each API this may
# raise a `RecursionError`.
# In order to avoid this, import only the API that you directly need like:
#
#   from cvat_sdk.api.auth_api import AuthApi
#
# or import this package, but before doing it, use:
#
#   import sys
#   sys.setrecursionlimit(n)

# Import APIs into API package:
from cvat_sdk.api.auth_api import AuthApi
from cvat_sdk.api.cloud_storages_api import CloudStoragesApi
from cvat_sdk.api.comments_api import CommentsApi
from cvat_sdk.api.invitations_api import InvitationsApi
from cvat_sdk.api.issues_api import IssuesApi
from cvat_sdk.api.jobs_api import JobsApi
from cvat_sdk.api.lambda_api import LambdaApi
from cvat_sdk.api.memberships_api import MembershipsApi
from cvat_sdk.api.organizations_api import OrganizationsApi
from cvat_sdk.api.projects_api import ProjectsApi
from cvat_sdk.api.restrictions_api import RestrictionsApi
from cvat_sdk.api.schema_api import SchemaApi
from cvat_sdk.api.server_api import ServerApi
from cvat_sdk.api.tasks_api import TasksApi
from cvat_sdk.api.users_api import UsersApi
