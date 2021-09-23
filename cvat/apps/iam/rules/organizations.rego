package organizations
import data.utils

# input: {
#     "method": <"GET"|"POST"|...>,
#     "path": [...],
#     "user": {
#         "id": <num>
#     },
#     "context": {
#         "privilege": <"admin"|"business"|"user"|"worker"|null>,
#         "org": {
#             "slug": <slug>,
#             "is_owner": <true|false>,
#             "role": <"maintainer"|"supervisor"|"worker"|null>
#         }
#     },
#     "organization": {
#         "count": <num>,
#         "is_owner": <true|false>,
#         "role": <"maintainer"|"supervisor"|"worker"|null>
#     }
# }


MAINTAINER := "maintainer"
SUPERVISOR := "supervisor"
WORKER     := "worker"

default allow = false
allow { # ADMIN has no restrictions
    utils.is_admin
}

allow { # CREATE one organization
    input.method == utils.POST
    input.path == ["organizations"]
    input.organization.count == 0
    utils.has_privilege(utils.USER)
}

allow { # CREATE many organizations
    input.method == utils.POST
    input.path == ["organizations"]
    utils.has_privilege(utils.BUSINESS)
}

allow { # LIST organizations is always allowed, run filter to get Q object
    input.method == utils.GET
    input.path == ["organizations"]
}

filter = [] { # Django Q object to filter list of entries
    utils.is_admin
} else = qobject {
    qobject := [ {"owner_id": input.user.id}, {"members__user_id": input.user.id}, "|" ]
}

allow { # VIEW an organization (owner)
    input.method == utils.GET
    org_slug := input.path[1]
    input.path == ["organizations", org_slug]
    input.organization.is_owner
}

allow { # VIEW an organization (member)
    input.method == utils.GET
    org_slug := input.path[1]
    input.path == ["organizations", org_slug]
    input.organization.role != null
}

allow { # UPDATE an organization (owner)
    input.method == utils.PATCH
    org_slug := input.path[1]
    input.path == ["organizations", org_slug]
    input.organization.is_owner
}

allow { # UPDATE an organization (maintainer)
    input.method == utils.PATCH
    org_slug := input.path[1]
    input.path == ["organizations", org_slug]
    utils.has_privilege(utils.USER)
    input.organization.role == MAINTAINER
}

allow { # DELETE an organization (owner)
    input.method == utils.DELETE
    org_slug := input.path[1]
    input.path == ["organizations", org_slug]
    utils.has_privilege(utils.WORKER)
    input.organization.is_owner
}
