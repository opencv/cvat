# flake8: noqa

# import all models into this package
# if you have many models here with many references from one model to another this may
# raise a RecursionError
# to avoid this, import only the models that you directly need like:
# from from cvat_sdk.model.pet import Pet
# or import this package, but before doing it, use:
# import sys
# sys.setrecursionlimit(n)

from cvat_sdk.model.about import About
from cvat_sdk.model.annotation_file_request import AnnotationFileRequest
from cvat_sdk.model.attribute import Attribute
from cvat_sdk.model.attribute_request import AttributeRequest
from cvat_sdk.model.attribute_val import AttributeVal
from cvat_sdk.model.basic_user import BasicUser
from cvat_sdk.model.basic_user_request import BasicUserRequest
from cvat_sdk.model.chunk_type import ChunkType
from cvat_sdk.model.cloud_storage_read import CloudStorageRead
from cvat_sdk.model.cloud_storage_write import CloudStorageWrite
from cvat_sdk.model.cloud_storage_write_request import CloudStorageWriteRequest
from cvat_sdk.model.comment_read import CommentRead
from cvat_sdk.model.comment_read_owner import CommentReadOwner
from cvat_sdk.model.comment_write import CommentWrite
from cvat_sdk.model.comment_write_request import CommentWriteRequest
from cvat_sdk.model.credentials_type_enum import CredentialsTypeEnum
from cvat_sdk.model.data_meta_read import DataMetaRead
from cvat_sdk.model.data_request import DataRequest
from cvat_sdk.model.dataset_file_request import DatasetFileRequest
from cvat_sdk.model.dataset_format import DatasetFormat
from cvat_sdk.model.dataset_formats import DatasetFormats
from cvat_sdk.model.exception import Exception
from cvat_sdk.model.exception_request import ExceptionRequest
from cvat_sdk.model.file_info import FileInfo
from cvat_sdk.model.file_info_type_enum import FileInfoTypeEnum
from cvat_sdk.model.frame_meta import FrameMeta
from cvat_sdk.model.input_type_enum import InputTypeEnum
from cvat_sdk.model.invitation_read import InvitationRead
from cvat_sdk.model.invitation_write import InvitationWrite
from cvat_sdk.model.invitation_write_request import InvitationWriteRequest
from cvat_sdk.model.issue_read import IssueRead
from cvat_sdk.model.issue_write import IssueWrite
from cvat_sdk.model.issue_write_request import IssueWriteRequest
from cvat_sdk.model.job_commit import JobCommit
from cvat_sdk.model.job_read import JobRead
from cvat_sdk.model.job_stage import JobStage
from cvat_sdk.model.job_status import JobStatus
from cvat_sdk.model.job_write import JobWrite
from cvat_sdk.model.job_write_request import JobWriteRequest
from cvat_sdk.model.label import Label
from cvat_sdk.model.labeled_data import LabeledData
from cvat_sdk.model.labeled_image import LabeledImage
from cvat_sdk.model.labeled_shape import LabeledShape
from cvat_sdk.model.labeled_track import LabeledTrack
from cvat_sdk.model.location_enum import LocationEnum
from cvat_sdk.model.log_event import LogEvent
from cvat_sdk.model.log_event_request import LogEventRequest
from cvat_sdk.model.login_request import LoginRequest
from cvat_sdk.model.manifest import Manifest
from cvat_sdk.model.manifest_request import ManifestRequest
from cvat_sdk.model.membership_read import MembershipRead
from cvat_sdk.model.membership_write import MembershipWrite
from cvat_sdk.model.meta_user import MetaUser
from cvat_sdk.model.operation_status import OperationStatus
from cvat_sdk.model.organization_read import OrganizationRead
from cvat_sdk.model.organization_write import OrganizationWrite
from cvat_sdk.model.organization_write_request import OrganizationWriteRequest
from cvat_sdk.model.paginated_cloud_storage_read_list import PaginatedCloudStorageReadList
from cvat_sdk.model.paginated_comment_read_list import PaginatedCommentReadList
from cvat_sdk.model.paginated_invitation_read_list import PaginatedInvitationReadList
from cvat_sdk.model.paginated_issue_read_list import PaginatedIssueReadList
from cvat_sdk.model.paginated_job_commit_list import PaginatedJobCommitList
from cvat_sdk.model.paginated_job_read_list import PaginatedJobReadList
from cvat_sdk.model.paginated_membership_read_list import PaginatedMembershipReadList
from cvat_sdk.model.paginated_meta_user_list import PaginatedMetaUserList
from cvat_sdk.model.paginated_polymorphic_project_list import PaginatedPolymorphicProjectList
from cvat_sdk.model.paginated_task_read_list import PaginatedTaskReadList
from cvat_sdk.model.password_change_request import PasswordChangeRequest
from cvat_sdk.model.password_reset_confirm_request import PasswordResetConfirmRequest
from cvat_sdk.model.password_reset_serializer_ex_request import PasswordResetSerializerExRequest
from cvat_sdk.model.patched_cloud_storage_write_request import PatchedCloudStorageWriteRequest
from cvat_sdk.model.patched_comment_write_request import PatchedCommentWriteRequest
from cvat_sdk.model.patched_invitation_write_request import PatchedInvitationWriteRequest
from cvat_sdk.model.patched_issue_write_request import PatchedIssueWriteRequest
from cvat_sdk.model.patched_job_write_request import PatchedJobWriteRequest
from cvat_sdk.model.patched_label_request import PatchedLabelRequest
from cvat_sdk.model.patched_membership_write_request import PatchedMembershipWriteRequest
from cvat_sdk.model.patched_organization_write_request import PatchedOrganizationWriteRequest
from cvat_sdk.model.patched_project_write_request import PatchedProjectWriteRequest
from cvat_sdk.model.patched_project_write_request_target_storage import (
    PatchedProjectWriteRequestTargetStorage,
)
from cvat_sdk.model.patched_task_write_request import PatchedTaskWriteRequest
from cvat_sdk.model.patched_task_write_request_target_storage import (
    PatchedTaskWriteRequestTargetStorage,
)
from cvat_sdk.model.patched_user_request import PatchedUserRequest
from cvat_sdk.model.plugins import Plugins
from cvat_sdk.model.polymorphic_project import PolymorphicProject
from cvat_sdk.model.project_file_request import ProjectFileRequest
from cvat_sdk.model.project_read import ProjectRead
from cvat_sdk.model.project_read_assignee import ProjectReadAssignee
from cvat_sdk.model.project_read_owner import ProjectReadOwner
from cvat_sdk.model.project_read_target_storage import ProjectReadTargetStorage
from cvat_sdk.model.project_search import ProjectSearch
from cvat_sdk.model.project_write import ProjectWrite
from cvat_sdk.model.project_write_request import ProjectWriteRequest
from cvat_sdk.model.provider_type_enum import ProviderTypeEnum
from cvat_sdk.model.rest_auth_detail import RestAuthDetail
from cvat_sdk.model.restricted_register import RestrictedRegister
from cvat_sdk.model.restricted_register_request import RestrictedRegisterRequest
from cvat_sdk.model.role_enum import RoleEnum
from cvat_sdk.model.rq_status import RqStatus
from cvat_sdk.model.rq_status_state_enum import RqStatusStateEnum
from cvat_sdk.model.segment import Segment
from cvat_sdk.model.shape_type import ShapeType
from cvat_sdk.model.signing_request import SigningRequest
from cvat_sdk.model.simple_job import SimpleJob
from cvat_sdk.model.sorting_method import SortingMethod
from cvat_sdk.model.storage import Storage
from cvat_sdk.model.storage_method import StorageMethod
from cvat_sdk.model.storage_request import StorageRequest
from cvat_sdk.model.storage_type import StorageType
from cvat_sdk.model.task_file_request import TaskFileRequest
from cvat_sdk.model.task_read import TaskRead
from cvat_sdk.model.task_read_target_storage import TaskReadTargetStorage
from cvat_sdk.model.task_write import TaskWrite
from cvat_sdk.model.task_write_request import TaskWriteRequest
from cvat_sdk.model.token import Token
from cvat_sdk.model.tracked_shape import TrackedShape
from cvat_sdk.model.user import User
from cvat_sdk.model.user_agreement import UserAgreement
from cvat_sdk.model.user_agreement_request import UserAgreementRequest
