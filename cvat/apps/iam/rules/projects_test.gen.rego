package projects

test_scope_UPDATE_DESC_context_SANDBOX_ownership_OWNER_privilege_ADMIN_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 67, "privilege": "admin"}, "organization": null}, "resource": {"id": 391, "owner": {"id": 67}, "assignee": {"id": 553}, "organization": {"id": 676}}}
}

test_scope_UPDATE_DESC_context_SANDBOX_ownership_OWNER_privilege_BUSINESS_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 67, "privilege": "business"}, "organization": null}, "resource": {"id": 377, "owner": {"id": 67}, "assignee": {"id": 555}, "organization": {"id": 699}}}
}

test_scope_UPDATE_DESC_context_SANDBOX_ownership_OWNER_privilege_USER_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 83, "privilege": "user"}, "organization": null}, "resource": {"id": 348, "owner": {"id": 83}, "assignee": {"id": 538}, "organization": {"id": 665}}}
}

test_scope_UPDATE_DESC_context_SANDBOX_ownership_OWNER_privilege_WORKER_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 71, "privilege": "worker"}, "organization": null}, "resource": {"id": 320, "owner": {"id": 71}, "assignee": {"id": 554}, "organization": {"id": 617}}}
}

test_scope_UPDATE_DESC_context_SANDBOX_ownership_OWNER_privilege_NONE_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 8, "privilege": "none"}, "organization": null}, "resource": {"id": 385, "owner": {"id": 8}, "assignee": {"id": 557}, "organization": {"id": 626}}}
}

test_scope_UPDATE_DESC_context_SANDBOX_ownership_ASSIGNEE_privilege_ADMIN_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 97, "privilege": "admin"}, "organization": null}, "resource": {"id": 345, "owner": {"id": 491}, "assignee": {"id": 97}, "organization": {"id": 618}}}
}

test_scope_UPDATE_DESC_context_SANDBOX_ownership_ASSIGNEE_privilege_BUSINESS_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 18, "privilege": "business"}, "organization": null}, "resource": {"id": 344, "owner": {"id": 478}, "assignee": {"id": 18}, "organization": {"id": 678}}}
}

test_scope_UPDATE_DESC_context_SANDBOX_ownership_ASSIGNEE_privilege_USER_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 25, "privilege": "user"}, "organization": null}, "resource": {"id": 333, "owner": {"id": 427}, "assignee": {"id": 25}, "organization": {"id": 655}}}
}

test_scope_UPDATE_DESC_context_SANDBOX_ownership_ASSIGNEE_privilege_WORKER_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 35, "privilege": "worker"}, "organization": null}, "resource": {"id": 310, "owner": {"id": 437}, "assignee": {"id": 35}, "organization": {"id": 635}}}
}

test_scope_UPDATE_DESC_context_SANDBOX_ownership_ASSIGNEE_privilege_NONE_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 88, "privilege": "none"}, "organization": null}, "resource": {"id": 316, "owner": {"id": 449}, "assignee": {"id": 88}, "organization": {"id": 607}}}
}

test_scope_UPDATE_DESC_context_SANDBOX_ownership_NONE_privilege_ADMIN_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 70, "privilege": "admin"}, "organization": null}, "resource": {"id": 364, "owner": {"id": 454}, "assignee": {"id": 534}, "organization": {"id": 687}}}
}

test_scope_UPDATE_DESC_context_SANDBOX_ownership_NONE_privilege_BUSINESS_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 5, "privilege": "business"}, "organization": null}, "resource": {"id": 375, "owner": {"id": 482}, "assignee": {"id": 511}, "organization": {"id": 633}}}
}

test_scope_UPDATE_DESC_context_SANDBOX_ownership_NONE_privilege_USER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 79, "privilege": "user"}, "organization": null}, "resource": {"id": 397, "owner": {"id": 407}, "assignee": {"id": 569}, "organization": {"id": 621}}}
}

test_scope_UPDATE_DESC_context_SANDBOX_ownership_NONE_privilege_WORKER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 43, "privilege": "worker"}, "organization": null}, "resource": {"id": 307, "owner": {"id": 472}, "assignee": {"id": 568}, "organization": {"id": 650}}}
}

test_scope_UPDATE_DESC_context_SANDBOX_ownership_NONE_privilege_NONE_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 87, "privilege": "none"}, "organization": null}, "resource": {"id": 319, "owner": {"id": 499}, "assignee": {"id": 529}, "organization": {"id": 606}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_OWNER_resource_same_org_FALSE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 87, "privilege": "admin"}, "organization": {"id": 112, "owner": {"id": 87}, "user": {"role": "owner"}}}, "resource": {"id": 316, "owner": {"id": 87}, "assignee": {"id": 575}, "organization": {"id": 628}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 41, "privilege": "admin"}, "organization": {"id": 183, "owner": {"id": 41}, "user": {"role": "owner"}}}, "resource": {"id": 317, "owner": {"id": 41}, "assignee": {"id": 565}, "organization": {"id": 183}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_MAINTAINER_resource_same_org_FALSE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 24, "privilege": "admin"}, "organization": {"id": 171, "owner": {"id": 225}, "user": {"role": "maintainer"}}}, "resource": {"id": 315, "owner": {"id": 24}, "assignee": {"id": 581}, "organization": {"id": 665}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 94, "privilege": "admin"}, "organization": {"id": 138, "owner": {"id": 210}, "user": {"role": "maintainer"}}}, "resource": {"id": 306, "owner": {"id": 94}, "assignee": {"id": 583}, "organization": {"id": 138}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_SUPERVISOR_resource_same_org_FALSE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 59, "privilege": "admin"}, "organization": {"id": 119, "owner": {"id": 260}, "user": {"role": "supervisor"}}}, "resource": {"id": 316, "owner": {"id": 59}, "assignee": {"id": 558}, "organization": {"id": 601}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 60, "privilege": "admin"}, "organization": {"id": 125, "owner": {"id": 278}, "user": {"role": "supervisor"}}}, "resource": {"id": 324, "owner": {"id": 60}, "assignee": {"id": 527}, "organization": {"id": 125}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_WORKER_resource_same_org_FALSE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 86, "privilege": "admin"}, "organization": {"id": 198, "owner": {"id": 218}, "user": {"role": "worker"}}}, "resource": {"id": 366, "owner": {"id": 86}, "assignee": {"id": 541}, "organization": {"id": 637}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 71, "privilege": "admin"}, "organization": {"id": 129, "owner": {"id": 270}, "user": {"role": "worker"}}}, "resource": {"id": 395, "owner": {"id": 71}, "assignee": {"id": 578}, "organization": {"id": 129}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_NONE_resource_same_org_FALSE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 4, "privilege": "admin"}, "organization": {"id": 159, "owner": {"id": 249}, "user": {"role": null}}}, "resource": {"id": 310, "owner": {"id": 4}, "assignee": {"id": 501}, "organization": {"id": 686}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 63, "privilege": "admin"}, "organization": {"id": 130, "owner": {"id": 257}, "user": {"role": null}}}, "resource": {"id": 316, "owner": {"id": 63}, "assignee": {"id": 520}, "organization": {"id": 130}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 68, "privilege": "business"}, "organization": {"id": 120, "owner": {"id": 68}, "user": {"role": "owner"}}}, "resource": {"id": 387, "owner": {"id": 68}, "assignee": {"id": 585}, "organization": {"id": 634}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 58, "privilege": "business"}, "organization": {"id": 114, "owner": {"id": 58}, "user": {"role": "owner"}}}, "resource": {"id": 341, "owner": {"id": 58}, "assignee": {"id": 572}, "organization": {"id": 114}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 20, "privilege": "business"}, "organization": {"id": 189, "owner": {"id": 280}, "user": {"role": "maintainer"}}}, "resource": {"id": 354, "owner": {"id": 20}, "assignee": {"id": 527}, "organization": {"id": 668}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 50, "privilege": "business"}, "organization": {"id": 176, "owner": {"id": 292}, "user": {"role": "maintainer"}}}, "resource": {"id": 365, "owner": {"id": 50}, "assignee": {"id": 544}, "organization": {"id": 176}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 50, "privilege": "business"}, "organization": {"id": 165, "owner": {"id": 283}, "user": {"role": "supervisor"}}}, "resource": {"id": 323, "owner": {"id": 50}, "assignee": {"id": 565}, "organization": {"id": 657}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 68, "privilege": "business"}, "organization": {"id": 144, "owner": {"id": 201}, "user": {"role": "supervisor"}}}, "resource": {"id": 393, "owner": {"id": 68}, "assignee": {"id": 534}, "organization": {"id": 144}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 93, "privilege": "business"}, "organization": {"id": 140, "owner": {"id": 201}, "user": {"role": "worker"}}}, "resource": {"id": 344, "owner": {"id": 93}, "assignee": {"id": 554}, "organization": {"id": 638}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 62, "privilege": "business"}, "organization": {"id": 141, "owner": {"id": 251}, "user": {"role": "worker"}}}, "resource": {"id": 391, "owner": {"id": 62}, "assignee": {"id": 514}, "organization": {"id": 141}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 82, "privilege": "business"}, "organization": {"id": 102, "owner": {"id": 277}, "user": {"role": null}}}, "resource": {"id": 323, "owner": {"id": 82}, "assignee": {"id": 500}, "organization": {"id": 627}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 14, "privilege": "business"}, "organization": {"id": 177, "owner": {"id": 212}, "user": {"role": null}}}, "resource": {"id": 373, "owner": {"id": 14}, "assignee": {"id": 564}, "organization": {"id": 177}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 78, "privilege": "user"}, "organization": {"id": 190, "owner": {"id": 78}, "user": {"role": "owner"}}}, "resource": {"id": 308, "owner": {"id": 78}, "assignee": {"id": 567}, "organization": {"id": 678}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 49, "privilege": "user"}, "organization": {"id": 110, "owner": {"id": 49}, "user": {"role": "owner"}}}, "resource": {"id": 366, "owner": {"id": 49}, "assignee": {"id": 535}, "organization": {"id": 110}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 23, "privilege": "user"}, "organization": {"id": 149, "owner": {"id": 277}, "user": {"role": "maintainer"}}}, "resource": {"id": 371, "owner": {"id": 23}, "assignee": {"id": 579}, "organization": {"id": 654}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 40, "privilege": "user"}, "organization": {"id": 109, "owner": {"id": 213}, "user": {"role": "maintainer"}}}, "resource": {"id": 357, "owner": {"id": 40}, "assignee": {"id": 552}, "organization": {"id": 109}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 61, "privilege": "user"}, "organization": {"id": 145, "owner": {"id": 234}, "user": {"role": "supervisor"}}}, "resource": {"id": 311, "owner": {"id": 61}, "assignee": {"id": 573}, "organization": {"id": 689}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 15, "privilege": "user"}, "organization": {"id": 150, "owner": {"id": 292}, "user": {"role": "supervisor"}}}, "resource": {"id": 399, "owner": {"id": 15}, "assignee": {"id": 506}, "organization": {"id": 150}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 48, "privilege": "user"}, "organization": {"id": 135, "owner": {"id": 229}, "user": {"role": "worker"}}}, "resource": {"id": 371, "owner": {"id": 48}, "assignee": {"id": 590}, "organization": {"id": 692}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 47, "privilege": "user"}, "organization": {"id": 197, "owner": {"id": 209}, "user": {"role": "worker"}}}, "resource": {"id": 342, "owner": {"id": 47}, "assignee": {"id": 525}, "organization": {"id": 197}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 27, "privilege": "user"}, "organization": {"id": 151, "owner": {"id": 205}, "user": {"role": null}}}, "resource": {"id": 391, "owner": {"id": 27}, "assignee": {"id": 590}, "organization": {"id": 677}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 10, "privilege": "user"}, "organization": {"id": 100, "owner": {"id": 223}, "user": {"role": null}}}, "resource": {"id": 391, "owner": {"id": 10}, "assignee": {"id": 542}, "organization": {"id": 100}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 61, "privilege": "worker"}, "organization": {"id": 129, "owner": {"id": 61}, "user": {"role": "owner"}}}, "resource": {"id": 329, "owner": {"id": 61}, "assignee": {"id": 515}, "organization": {"id": 685}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 46, "privilege": "worker"}, "organization": {"id": 102, "owner": {"id": 46}, "user": {"role": "owner"}}}, "resource": {"id": 303, "owner": {"id": 46}, "assignee": {"id": 530}, "organization": {"id": 102}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 76, "privilege": "worker"}, "organization": {"id": 154, "owner": {"id": 287}, "user": {"role": "maintainer"}}}, "resource": {"id": 371, "owner": {"id": 76}, "assignee": {"id": 509}, "organization": {"id": 667}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 91, "privilege": "worker"}, "organization": {"id": 172, "owner": {"id": 284}, "user": {"role": "maintainer"}}}, "resource": {"id": 386, "owner": {"id": 91}, "assignee": {"id": 556}, "organization": {"id": 172}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 13, "privilege": "worker"}, "organization": {"id": 109, "owner": {"id": 263}, "user": {"role": "supervisor"}}}, "resource": {"id": 317, "owner": {"id": 13}, "assignee": {"id": 544}, "organization": {"id": 603}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 46, "privilege": "worker"}, "organization": {"id": 154, "owner": {"id": 270}, "user": {"role": "supervisor"}}}, "resource": {"id": 335, "owner": {"id": 46}, "assignee": {"id": 547}, "organization": {"id": 154}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 90, "privilege": "worker"}, "organization": {"id": 162, "owner": {"id": 268}, "user": {"role": "worker"}}}, "resource": {"id": 350, "owner": {"id": 90}, "assignee": {"id": 539}, "organization": {"id": 608}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 94, "privilege": "worker"}, "organization": {"id": 112, "owner": {"id": 240}, "user": {"role": "worker"}}}, "resource": {"id": 320, "owner": {"id": 94}, "assignee": {"id": 519}, "organization": {"id": 112}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 3, "privilege": "worker"}, "organization": {"id": 162, "owner": {"id": 264}, "user": {"role": null}}}, "resource": {"id": 371, "owner": {"id": 3}, "assignee": {"id": 540}, "organization": {"id": 631}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 14, "privilege": "worker"}, "organization": {"id": 123, "owner": {"id": 293}, "user": {"role": null}}}, "resource": {"id": 351, "owner": {"id": 14}, "assignee": {"id": 565}, "organization": {"id": 123}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 72, "privilege": "none"}, "organization": {"id": 113, "owner": {"id": 72}, "user": {"role": "owner"}}}, "resource": {"id": 350, "owner": {"id": 72}, "assignee": {"id": 561}, "organization": {"id": 608}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_OWNER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 68, "privilege": "none"}, "organization": {"id": 189, "owner": {"id": 68}, "user": {"role": "owner"}}}, "resource": {"id": 323, "owner": {"id": 68}, "assignee": {"id": 528}, "organization": {"id": 189}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 88, "privilege": "none"}, "organization": {"id": 178, "owner": {"id": 260}, "user": {"role": "maintainer"}}}, "resource": {"id": 317, "owner": {"id": 88}, "assignee": {"id": 560}, "organization": {"id": 634}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_MAINTAINER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 31, "privilege": "none"}, "organization": {"id": 101, "owner": {"id": 297}, "user": {"role": "maintainer"}}}, "resource": {"id": 368, "owner": {"id": 31}, "assignee": {"id": 502}, "organization": {"id": 101}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 1, "privilege": "none"}, "organization": {"id": 178, "owner": {"id": 278}, "user": {"role": "supervisor"}}}, "resource": {"id": 374, "owner": {"id": 1}, "assignee": {"id": 527}, "organization": {"id": 668}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_SUPERVISOR_resource_same_org_TRUE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 10, "privilege": "none"}, "organization": {"id": 135, "owner": {"id": 267}, "user": {"role": "supervisor"}}}, "resource": {"id": 385, "owner": {"id": 10}, "assignee": {"id": 578}, "organization": {"id": 135}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 7, "privilege": "none"}, "organization": {"id": 169, "owner": {"id": 244}, "user": {"role": "worker"}}}, "resource": {"id": 312, "owner": {"id": 7}, "assignee": {"id": 529}, "organization": {"id": 627}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_WORKER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 34, "privilege": "none"}, "organization": {"id": 146, "owner": {"id": 254}, "user": {"role": "worker"}}}, "resource": {"id": 301, "owner": {"id": 34}, "assignee": {"id": 551}, "organization": {"id": 146}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 12, "privilege": "none"}, "organization": {"id": 163, "owner": {"id": 206}, "user": {"role": null}}}, "resource": {"id": 359, "owner": {"id": 12}, "assignee": {"id": 536}, "organization": {"id": 615}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 69, "privilege": "none"}, "organization": {"id": 115, "owner": {"id": 246}, "user": {"role": null}}}, "resource": {"id": 328, "owner": {"id": 69}, "assignee": {"id": 577}, "organization": {"id": 115}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_OWNER_resource_same_org_FALSE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 10, "privilege": "admin"}, "organization": {"id": 184, "owner": {"id": 10}, "user": {"role": "owner"}}}, "resource": {"id": 306, "owner": {"id": 483}, "assignee": {"id": 10}, "organization": {"id": 685}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 98, "privilege": "admin"}, "organization": {"id": 183, "owner": {"id": 98}, "user": {"role": "owner"}}}, "resource": {"id": 391, "owner": {"id": 456}, "assignee": {"id": 98}, "organization": {"id": 183}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_MAINTAINER_resource_same_org_FALSE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 50, "privilege": "admin"}, "organization": {"id": 171, "owner": {"id": 257}, "user": {"role": "maintainer"}}}, "resource": {"id": 346, "owner": {"id": 486}, "assignee": {"id": 50}, "organization": {"id": 695}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 82, "privilege": "admin"}, "organization": {"id": 187, "owner": {"id": 205}, "user": {"role": "maintainer"}}}, "resource": {"id": 342, "owner": {"id": 470}, "assignee": {"id": 82}, "organization": {"id": 187}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_SUPERVISOR_resource_same_org_FALSE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 5, "privilege": "admin"}, "organization": {"id": 103, "owner": {"id": 256}, "user": {"role": "supervisor"}}}, "resource": {"id": 389, "owner": {"id": 439}, "assignee": {"id": 5}, "organization": {"id": 678}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 17, "privilege": "admin"}, "organization": {"id": 182, "owner": {"id": 221}, "user": {"role": "supervisor"}}}, "resource": {"id": 395, "owner": {"id": 483}, "assignee": {"id": 17}, "organization": {"id": 182}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_WORKER_resource_same_org_FALSE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 12, "privilege": "admin"}, "organization": {"id": 109, "owner": {"id": 218}, "user": {"role": "worker"}}}, "resource": {"id": 394, "owner": {"id": 401}, "assignee": {"id": 12}, "organization": {"id": 673}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 62, "privilege": "admin"}, "organization": {"id": 122, "owner": {"id": 251}, "user": {"role": "worker"}}}, "resource": {"id": 373, "owner": {"id": 411}, "assignee": {"id": 62}, "organization": {"id": 122}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_NONE_resource_same_org_FALSE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 70, "privilege": "admin"}, "organization": {"id": 157, "owner": {"id": 239}, "user": {"role": null}}}, "resource": {"id": 366, "owner": {"id": 410}, "assignee": {"id": 70}, "organization": {"id": 658}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 71, "privilege": "admin"}, "organization": {"id": 130, "owner": {"id": 225}, "user": {"role": null}}}, "resource": {"id": 342, "owner": {"id": 476}, "assignee": {"id": 71}, "organization": {"id": 130}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 94, "privilege": "business"}, "organization": {"id": 199, "owner": {"id": 94}, "user": {"role": "owner"}}}, "resource": {"id": 303, "owner": {"id": 491}, "assignee": {"id": 94}, "organization": {"id": 691}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 74, "privilege": "business"}, "organization": {"id": 183, "owner": {"id": 74}, "user": {"role": "owner"}}}, "resource": {"id": 334, "owner": {"id": 431}, "assignee": {"id": 74}, "organization": {"id": 183}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 92, "privilege": "business"}, "organization": {"id": 148, "owner": {"id": 216}, "user": {"role": "maintainer"}}}, "resource": {"id": 351, "owner": {"id": 419}, "assignee": {"id": 92}, "organization": {"id": 631}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 53, "privilege": "business"}, "organization": {"id": 152, "owner": {"id": 236}, "user": {"role": "maintainer"}}}, "resource": {"id": 321, "owner": {"id": 436}, "assignee": {"id": 53}, "organization": {"id": 152}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 1, "privilege": "business"}, "organization": {"id": 137, "owner": {"id": 230}, "user": {"role": "supervisor"}}}, "resource": {"id": 370, "owner": {"id": 405}, "assignee": {"id": 1}, "organization": {"id": 654}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 38, "privilege": "business"}, "organization": {"id": 147, "owner": {"id": 269}, "user": {"role": "supervisor"}}}, "resource": {"id": 352, "owner": {"id": 447}, "assignee": {"id": 38}, "organization": {"id": 147}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 14, "privilege": "business"}, "organization": {"id": 166, "owner": {"id": 297}, "user": {"role": "worker"}}}, "resource": {"id": 391, "owner": {"id": 436}, "assignee": {"id": 14}, "organization": {"id": 666}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 7, "privilege": "business"}, "organization": {"id": 135, "owner": {"id": 213}, "user": {"role": "worker"}}}, "resource": {"id": 370, "owner": {"id": 418}, "assignee": {"id": 7}, "organization": {"id": 135}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 55, "privilege": "business"}, "organization": {"id": 100, "owner": {"id": 202}, "user": {"role": null}}}, "resource": {"id": 370, "owner": {"id": 409}, "assignee": {"id": 55}, "organization": {"id": 622}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 22, "privilege": "business"}, "organization": {"id": 150, "owner": {"id": 244}, "user": {"role": null}}}, "resource": {"id": 387, "owner": {"id": 446}, "assignee": {"id": 22}, "organization": {"id": 150}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 81, "privilege": "user"}, "organization": {"id": 117, "owner": {"id": 81}, "user": {"role": "owner"}}}, "resource": {"id": 307, "owner": {"id": 412}, "assignee": {"id": 81}, "organization": {"id": 665}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 44, "privilege": "user"}, "organization": {"id": 130, "owner": {"id": 44}, "user": {"role": "owner"}}}, "resource": {"id": 304, "owner": {"id": 427}, "assignee": {"id": 44}, "organization": {"id": 130}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 87, "privilege": "user"}, "organization": {"id": 149, "owner": {"id": 295}, "user": {"role": "maintainer"}}}, "resource": {"id": 351, "owner": {"id": 401}, "assignee": {"id": 87}, "organization": {"id": 649}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 17, "privilege": "user"}, "organization": {"id": 160, "owner": {"id": 207}, "user": {"role": "maintainer"}}}, "resource": {"id": 333, "owner": {"id": 486}, "assignee": {"id": 17}, "organization": {"id": 160}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 98, "privilege": "user"}, "organization": {"id": 108, "owner": {"id": 279}, "user": {"role": "supervisor"}}}, "resource": {"id": 305, "owner": {"id": 449}, "assignee": {"id": 98}, "organization": {"id": 676}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 53, "privilege": "user"}, "organization": {"id": 134, "owner": {"id": 269}, "user": {"role": "supervisor"}}}, "resource": {"id": 328, "owner": {"id": 494}, "assignee": {"id": 53}, "organization": {"id": 134}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 66, "privilege": "user"}, "organization": {"id": 124, "owner": {"id": 255}, "user": {"role": "worker"}}}, "resource": {"id": 377, "owner": {"id": 462}, "assignee": {"id": 66}, "organization": {"id": 692}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 86, "privilege": "user"}, "organization": {"id": 119, "owner": {"id": 295}, "user": {"role": "worker"}}}, "resource": {"id": 349, "owner": {"id": 434}, "assignee": {"id": 86}, "organization": {"id": 119}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 88, "privilege": "user"}, "organization": {"id": 189, "owner": {"id": 223}, "user": {"role": null}}}, "resource": {"id": 377, "owner": {"id": 433}, "assignee": {"id": 88}, "organization": {"id": 616}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 12, "privilege": "user"}, "organization": {"id": 131, "owner": {"id": 285}, "user": {"role": null}}}, "resource": {"id": 386, "owner": {"id": 468}, "assignee": {"id": 12}, "organization": {"id": 131}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 38, "privilege": "worker"}, "organization": {"id": 185, "owner": {"id": 38}, "user": {"role": "owner"}}}, "resource": {"id": 343, "owner": {"id": 469}, "assignee": {"id": 38}, "organization": {"id": 634}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 65, "privilege": "worker"}, "organization": {"id": 155, "owner": {"id": 65}, "user": {"role": "owner"}}}, "resource": {"id": 311, "owner": {"id": 426}, "assignee": {"id": 65}, "organization": {"id": 155}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 35, "privilege": "worker"}, "organization": {"id": 171, "owner": {"id": 219}, "user": {"role": "maintainer"}}}, "resource": {"id": 300, "owner": {"id": 462}, "assignee": {"id": 35}, "organization": {"id": 695}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 76, "privilege": "worker"}, "organization": {"id": 161, "owner": {"id": 215}, "user": {"role": "maintainer"}}}, "resource": {"id": 369, "owner": {"id": 488}, "assignee": {"id": 76}, "organization": {"id": 161}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 22, "privilege": "worker"}, "organization": {"id": 146, "owner": {"id": 240}, "user": {"role": "supervisor"}}}, "resource": {"id": 365, "owner": {"id": 486}, "assignee": {"id": 22}, "organization": {"id": 627}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 77, "privilege": "worker"}, "organization": {"id": 198, "owner": {"id": 221}, "user": {"role": "supervisor"}}}, "resource": {"id": 385, "owner": {"id": 472}, "assignee": {"id": 77}, "organization": {"id": 198}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 43, "privilege": "worker"}, "organization": {"id": 149, "owner": {"id": 225}, "user": {"role": "worker"}}}, "resource": {"id": 308, "owner": {"id": 441}, "assignee": {"id": 43}, "organization": {"id": 694}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 12, "privilege": "worker"}, "organization": {"id": 115, "owner": {"id": 217}, "user": {"role": "worker"}}}, "resource": {"id": 321, "owner": {"id": 446}, "assignee": {"id": 12}, "organization": {"id": 115}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 90, "privilege": "worker"}, "organization": {"id": 172, "owner": {"id": 263}, "user": {"role": null}}}, "resource": {"id": 384, "owner": {"id": 476}, "assignee": {"id": 90}, "organization": {"id": 601}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 4, "privilege": "worker"}, "organization": {"id": 178, "owner": {"id": 274}, "user": {"role": null}}}, "resource": {"id": 370, "owner": {"id": 492}, "assignee": {"id": 4}, "organization": {"id": 178}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 2, "privilege": "none"}, "organization": {"id": 108, "owner": {"id": 2}, "user": {"role": "owner"}}}, "resource": {"id": 334, "owner": {"id": 468}, "assignee": {"id": 2}, "organization": {"id": 696}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_OWNER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 43, "privilege": "none"}, "organization": {"id": 175, "owner": {"id": 43}, "user": {"role": "owner"}}}, "resource": {"id": 320, "owner": {"id": 445}, "assignee": {"id": 43}, "organization": {"id": 175}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 21, "privilege": "none"}, "organization": {"id": 117, "owner": {"id": 288}, "user": {"role": "maintainer"}}}, "resource": {"id": 387, "owner": {"id": 415}, "assignee": {"id": 21}, "organization": {"id": 647}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_MAINTAINER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 4, "privilege": "none"}, "organization": {"id": 176, "owner": {"id": 247}, "user": {"role": "maintainer"}}}, "resource": {"id": 391, "owner": {"id": 485}, "assignee": {"id": 4}, "organization": {"id": 176}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 35, "privilege": "none"}, "organization": {"id": 168, "owner": {"id": 234}, "user": {"role": "supervisor"}}}, "resource": {"id": 301, "owner": {"id": 482}, "assignee": {"id": 35}, "organization": {"id": 620}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_SUPERVISOR_resource_same_org_TRUE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 22, "privilege": "none"}, "organization": {"id": 126, "owner": {"id": 230}, "user": {"role": "supervisor"}}}, "resource": {"id": 396, "owner": {"id": 407}, "assignee": {"id": 22}, "organization": {"id": 126}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 64, "privilege": "none"}, "organization": {"id": 117, "owner": {"id": 285}, "user": {"role": "worker"}}}, "resource": {"id": 342, "owner": {"id": 489}, "assignee": {"id": 64}, "organization": {"id": 646}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_WORKER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 91, "privilege": "none"}, "organization": {"id": 106, "owner": {"id": 290}, "user": {"role": "worker"}}}, "resource": {"id": 384, "owner": {"id": 494}, "assignee": {"id": 91}, "organization": {"id": 106}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 55, "privilege": "none"}, "organization": {"id": 147, "owner": {"id": 291}, "user": {"role": null}}}, "resource": {"id": 361, "owner": {"id": 453}, "assignee": {"id": 55}, "organization": {"id": 687}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 35, "privilege": "none"}, "organization": {"id": 159, "owner": {"id": 236}, "user": {"role": null}}}, "resource": {"id": 318, "owner": {"id": 470}, "assignee": {"id": 35}, "organization": {"id": 159}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_OWNER_resource_same_org_FALSE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 46, "privilege": "admin"}, "organization": {"id": 198, "owner": {"id": 46}, "user": {"role": "owner"}}}, "resource": {"id": 357, "owner": {"id": 474}, "assignee": {"id": 568}, "organization": {"id": 684}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 30, "privilege": "admin"}, "organization": {"id": 143, "owner": {"id": 30}, "user": {"role": "owner"}}}, "resource": {"id": 364, "owner": {"id": 487}, "assignee": {"id": 555}, "organization": {"id": 143}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_MAINTAINER_resource_same_org_FALSE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 48, "privilege": "admin"}, "organization": {"id": 137, "owner": {"id": 217}, "user": {"role": "maintainer"}}}, "resource": {"id": 313, "owner": {"id": 477}, "assignee": {"id": 582}, "organization": {"id": 650}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 42, "privilege": "admin"}, "organization": {"id": 151, "owner": {"id": 219}, "user": {"role": "maintainer"}}}, "resource": {"id": 373, "owner": {"id": 440}, "assignee": {"id": 596}, "organization": {"id": 151}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_SUPERVISOR_resource_same_org_FALSE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 24, "privilege": "admin"}, "organization": {"id": 107, "owner": {"id": 238}, "user": {"role": "supervisor"}}}, "resource": {"id": 360, "owner": {"id": 431}, "assignee": {"id": 576}, "organization": {"id": 674}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 99, "privilege": "admin"}, "organization": {"id": 186, "owner": {"id": 271}, "user": {"role": "supervisor"}}}, "resource": {"id": 327, "owner": {"id": 490}, "assignee": {"id": 541}, "organization": {"id": 186}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_WORKER_resource_same_org_FALSE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 84, "privilege": "admin"}, "organization": {"id": 155, "owner": {"id": 202}, "user": {"role": "worker"}}}, "resource": {"id": 334, "owner": {"id": 485}, "assignee": {"id": 533}, "organization": {"id": 695}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 25, "privilege": "admin"}, "organization": {"id": 191, "owner": {"id": 207}, "user": {"role": "worker"}}}, "resource": {"id": 313, "owner": {"id": 483}, "assignee": {"id": 566}, "organization": {"id": 191}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_NONE_resource_same_org_FALSE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 47, "privilege": "admin"}, "organization": {"id": 166, "owner": {"id": 225}, "user": {"role": null}}}, "resource": {"id": 310, "owner": {"id": 467}, "assignee": {"id": 577}, "organization": {"id": 619}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 39, "privilege": "admin"}, "organization": {"id": 108, "owner": {"id": 256}, "user": {"role": null}}}, "resource": {"id": 389, "owner": {"id": 469}, "assignee": {"id": 541}, "organization": {"id": 108}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 88, "privilege": "business"}, "organization": {"id": 135, "owner": {"id": 88}, "user": {"role": "owner"}}}, "resource": {"id": 391, "owner": {"id": 485}, "assignee": {"id": 564}, "organization": {"id": 630}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 99, "privilege": "business"}, "organization": {"id": 142, "owner": {"id": 99}, "user": {"role": "owner"}}}, "resource": {"id": 363, "owner": {"id": 435}, "assignee": {"id": 538}, "organization": {"id": 142}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 52, "privilege": "business"}, "organization": {"id": 127, "owner": {"id": 232}, "user": {"role": "maintainer"}}}, "resource": {"id": 332, "owner": {"id": 478}, "assignee": {"id": 532}, "organization": {"id": 688}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 4, "privilege": "business"}, "organization": {"id": 134, "owner": {"id": 273}, "user": {"role": "maintainer"}}}, "resource": {"id": 371, "owner": {"id": 443}, "assignee": {"id": 587}, "organization": {"id": 134}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 6, "privilege": "business"}, "organization": {"id": 184, "owner": {"id": 255}, "user": {"role": "supervisor"}}}, "resource": {"id": 303, "owner": {"id": 440}, "assignee": {"id": 567}, "organization": {"id": 617}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_SUPERVISOR_resource_same_org_TRUE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 46, "privilege": "business"}, "organization": {"id": 103, "owner": {"id": 227}, "user": {"role": "supervisor"}}}, "resource": {"id": 387, "owner": {"id": 453}, "assignee": {"id": 516}, "organization": {"id": 103}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 14, "privilege": "business"}, "organization": {"id": 138, "owner": {"id": 296}, "user": {"role": "worker"}}}, "resource": {"id": 343, "owner": {"id": 421}, "assignee": {"id": 577}, "organization": {"id": 611}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_WORKER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 57, "privilege": "business"}, "organization": {"id": 189, "owner": {"id": 211}, "user": {"role": "worker"}}}, "resource": {"id": 397, "owner": {"id": 447}, "assignee": {"id": 566}, "organization": {"id": 189}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 92, "privilege": "business"}, "organization": {"id": 177, "owner": {"id": 272}, "user": {"role": null}}}, "resource": {"id": 390, "owner": {"id": 419}, "assignee": {"id": 517}, "organization": {"id": 639}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 43, "privilege": "business"}, "organization": {"id": 149, "owner": {"id": 288}, "user": {"role": null}}}, "resource": {"id": 374, "owner": {"id": 413}, "assignee": {"id": 512}, "organization": {"id": 149}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 24, "privilege": "user"}, "organization": {"id": 111, "owner": {"id": 24}, "user": {"role": "owner"}}}, "resource": {"id": 317, "owner": {"id": 488}, "assignee": {"id": 529}, "organization": {"id": 621}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 92, "privilege": "user"}, "organization": {"id": 122, "owner": {"id": 92}, "user": {"role": "owner"}}}, "resource": {"id": 351, "owner": {"id": 442}, "assignee": {"id": 570}, "organization": {"id": 122}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 13, "privilege": "user"}, "organization": {"id": 163, "owner": {"id": 262}, "user": {"role": "maintainer"}}}, "resource": {"id": 358, "owner": {"id": 414}, "assignee": {"id": 549}, "organization": {"id": 679}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "update:desc", "auth": {"user": {"id": 95, "privilege": "user"}, "organization": {"id": 163, "owner": {"id": 235}, "user": {"role": "maintainer"}}}, "resource": {"id": 395, "owner": {"id": 405}, "assignee": {"id": 545}, "organization": {"id": 163}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 67, "privilege": "user"}, "organization": {"id": 160, "owner": {"id": 215}, "user": {"role": "supervisor"}}}, "resource": {"id": 314, "owner": {"id": 469}, "assignee": {"id": 550}, "organization": {"id": 660}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_SUPERVISOR_resource_same_org_TRUE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 66, "privilege": "user"}, "organization": {"id": 143, "owner": {"id": 213}, "user": {"role": "supervisor"}}}, "resource": {"id": 312, "owner": {"id": 412}, "assignee": {"id": 571}, "organization": {"id": 143}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 77, "privilege": "user"}, "organization": {"id": 100, "owner": {"id": 271}, "user": {"role": "worker"}}}, "resource": {"id": 372, "owner": {"id": 400}, "assignee": {"id": 501}, "organization": {"id": 606}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_WORKER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 55, "privilege": "user"}, "organization": {"id": 159, "owner": {"id": 248}, "user": {"role": "worker"}}}, "resource": {"id": 359, "owner": {"id": 461}, "assignee": {"id": 504}, "organization": {"id": 159}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 96, "privilege": "user"}, "organization": {"id": 178, "owner": {"id": 230}, "user": {"role": null}}}, "resource": {"id": 316, "owner": {"id": 433}, "assignee": {"id": 529}, "organization": {"id": 691}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 49, "privilege": "user"}, "organization": {"id": 153, "owner": {"id": 257}, "user": {"role": null}}}, "resource": {"id": 333, "owner": {"id": 418}, "assignee": {"id": 513}, "organization": {"id": 153}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 57, "privilege": "worker"}, "organization": {"id": 129, "owner": {"id": 57}, "user": {"role": "owner"}}}, "resource": {"id": 311, "owner": {"id": 431}, "assignee": {"id": 585}, "organization": {"id": 666}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_OWNER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 92, "privilege": "worker"}, "organization": {"id": 112, "owner": {"id": 92}, "user": {"role": "owner"}}}, "resource": {"id": 322, "owner": {"id": 429}, "assignee": {"id": 544}, "organization": {"id": 112}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 81, "privilege": "worker"}, "organization": {"id": 128, "owner": {"id": 246}, "user": {"role": "maintainer"}}}, "resource": {"id": 328, "owner": {"id": 428}, "assignee": {"id": 527}, "organization": {"id": 628}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_MAINTAINER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 37, "privilege": "worker"}, "organization": {"id": 130, "owner": {"id": 286}, "user": {"role": "maintainer"}}}, "resource": {"id": 343, "owner": {"id": 456}, "assignee": {"id": 560}, "organization": {"id": 130}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 94, "privilege": "worker"}, "organization": {"id": 135, "owner": {"id": 251}, "user": {"role": "supervisor"}}}, "resource": {"id": 384, "owner": {"id": 438}, "assignee": {"id": 548}, "organization": {"id": 661}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_SUPERVISOR_resource_same_org_TRUE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 96, "privilege": "worker"}, "organization": {"id": 109, "owner": {"id": 293}, "user": {"role": "supervisor"}}}, "resource": {"id": 357, "owner": {"id": 434}, "assignee": {"id": 521}, "organization": {"id": 109}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 23, "privilege": "worker"}, "organization": {"id": 161, "owner": {"id": 265}, "user": {"role": "worker"}}}, "resource": {"id": 366, "owner": {"id": 454}, "assignee": {"id": 589}, "organization": {"id": 638}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_WORKER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 84, "privilege": "worker"}, "organization": {"id": 195, "owner": {"id": 239}, "user": {"role": "worker"}}}, "resource": {"id": 302, "owner": {"id": 498}, "assignee": {"id": 574}, "organization": {"id": 195}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 64, "privilege": "worker"}, "organization": {"id": 168, "owner": {"id": 287}, "user": {"role": null}}}, "resource": {"id": 383, "owner": {"id": 419}, "assignee": {"id": 539}, "organization": {"id": 694}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 2, "privilege": "worker"}, "organization": {"id": 156, "owner": {"id": 260}, "user": {"role": null}}}, "resource": {"id": 355, "owner": {"id": 425}, "assignee": {"id": 550}, "organization": {"id": 156}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 61, "privilege": "none"}, "organization": {"id": 165, "owner": {"id": 61}, "user": {"role": "owner"}}}, "resource": {"id": 361, "owner": {"id": 405}, "assignee": {"id": 569}, "organization": {"id": 659}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_OWNER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 84, "privilege": "none"}, "organization": {"id": 168, "owner": {"id": 84}, "user": {"role": "owner"}}}, "resource": {"id": 360, "owner": {"id": 416}, "assignee": {"id": 530}, "organization": {"id": 168}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 8, "privilege": "none"}, "organization": {"id": 121, "owner": {"id": 273}, "user": {"role": "maintainer"}}}, "resource": {"id": 355, "owner": {"id": 484}, "assignee": {"id": 556}, "organization": {"id": 683}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_MAINTAINER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 34, "privilege": "none"}, "organization": {"id": 119, "owner": {"id": 264}, "user": {"role": "maintainer"}}}, "resource": {"id": 320, "owner": {"id": 402}, "assignee": {"id": 539}, "organization": {"id": 119}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 65, "privilege": "none"}, "organization": {"id": 155, "owner": {"id": 206}, "user": {"role": "supervisor"}}}, "resource": {"id": 352, "owner": {"id": 421}, "assignee": {"id": 556}, "organization": {"id": 620}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_SUPERVISOR_resource_same_org_TRUE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 98, "privilege": "none"}, "organization": {"id": 119, "owner": {"id": 247}, "user": {"role": "supervisor"}}}, "resource": {"id": 356, "owner": {"id": 401}, "assignee": {"id": 536}, "organization": {"id": 119}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 24, "privilege": "none"}, "organization": {"id": 119, "owner": {"id": 254}, "user": {"role": "worker"}}}, "resource": {"id": 358, "owner": {"id": 433}, "assignee": {"id": 597}, "organization": {"id": 668}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_WORKER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 16, "privilege": "none"}, "organization": {"id": 185, "owner": {"id": 203}, "user": {"role": "worker"}}}, "resource": {"id": 351, "owner": {"id": 499}, "assignee": {"id": 573}, "organization": {"id": 185}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 68, "privilege": "none"}, "organization": {"id": 143, "owner": {"id": 210}, "user": {"role": null}}}, "resource": {"id": 364, "owner": {"id": 416}, "assignee": {"id": 556}, "organization": {"id": 685}}}
}

test_scope_UPDATE_DESC_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:desc", "auth": {"user": {"id": 91, "privilege": "none"}, "organization": {"id": 197, "owner": {"id": 241}, "user": {"role": null}}}, "resource": {"id": 362, "owner": {"id": 416}, "assignee": {"id": 553}, "organization": {"id": 197}}}
}

test_scope_UPDATE_ASSIGNEE_context_SANDBOX_ownership_OWNER_privilege_ADMIN_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 12, "privilege": "admin"}, "organization": null}, "resource": {"id": 308, "owner": {"id": 12}, "assignee": {"id": 577}, "organization": {"id": 695}}}
}

test_scope_UPDATE_ASSIGNEE_context_SANDBOX_ownership_OWNER_privilege_BUSINESS_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 47, "privilege": "business"}, "organization": null}, "resource": {"id": 391, "owner": {"id": 47}, "assignee": {"id": 537}, "organization": {"id": 679}}}
}

test_scope_UPDATE_ASSIGNEE_context_SANDBOX_ownership_OWNER_privilege_USER_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 13, "privilege": "user"}, "organization": null}, "resource": {"id": 358, "owner": {"id": 13}, "assignee": {"id": 509}, "organization": {"id": 681}}}
}

test_scope_UPDATE_ASSIGNEE_context_SANDBOX_ownership_OWNER_privilege_WORKER_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 34, "privilege": "worker"}, "organization": null}, "resource": {"id": 384, "owner": {"id": 34}, "assignee": {"id": 566}, "organization": {"id": 685}}}
}

test_scope_UPDATE_ASSIGNEE_context_SANDBOX_ownership_OWNER_privilege_NONE_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 76, "privilege": "none"}, "organization": null}, "resource": {"id": 377, "owner": {"id": 76}, "assignee": {"id": 553}, "organization": {"id": 650}}}
}

test_scope_UPDATE_ASSIGNEE_context_SANDBOX_ownership_ASSIGNEE_privilege_ADMIN_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 60, "privilege": "admin"}, "organization": null}, "resource": {"id": 399, "owner": {"id": 437}, "assignee": {"id": 60}, "organization": {"id": 691}}}
}

test_scope_UPDATE_ASSIGNEE_context_SANDBOX_ownership_ASSIGNEE_privilege_BUSINESS_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 98, "privilege": "business"}, "organization": null}, "resource": {"id": 371, "owner": {"id": 485}, "assignee": {"id": 98}, "organization": {"id": 660}}}
}

test_scope_UPDATE_ASSIGNEE_context_SANDBOX_ownership_ASSIGNEE_privilege_USER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 79, "privilege": "user"}, "organization": null}, "resource": {"id": 335, "owner": {"id": 415}, "assignee": {"id": 79}, "organization": {"id": 631}}}
}

test_scope_UPDATE_ASSIGNEE_context_SANDBOX_ownership_ASSIGNEE_privilege_WORKER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 50, "privilege": "worker"}, "organization": null}, "resource": {"id": 317, "owner": {"id": 439}, "assignee": {"id": 50}, "organization": {"id": 677}}}
}

test_scope_UPDATE_ASSIGNEE_context_SANDBOX_ownership_ASSIGNEE_privilege_NONE_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 21, "privilege": "none"}, "organization": null}, "resource": {"id": 383, "owner": {"id": 462}, "assignee": {"id": 21}, "organization": {"id": 618}}}
}

test_scope_UPDATE_ASSIGNEE_context_SANDBOX_ownership_NONE_privilege_ADMIN_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 46, "privilege": "admin"}, "organization": null}, "resource": {"id": 389, "owner": {"id": 496}, "assignee": {"id": 505}, "organization": {"id": 616}}}
}

test_scope_UPDATE_ASSIGNEE_context_SANDBOX_ownership_NONE_privilege_BUSINESS_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 3, "privilege": "business"}, "organization": null}, "resource": {"id": 375, "owner": {"id": 486}, "assignee": {"id": 557}, "organization": {"id": 665}}}
}

test_scope_UPDATE_ASSIGNEE_context_SANDBOX_ownership_NONE_privilege_USER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 43, "privilege": "user"}, "organization": null}, "resource": {"id": 306, "owner": {"id": 450}, "assignee": {"id": 585}, "organization": {"id": 660}}}
}

test_scope_UPDATE_ASSIGNEE_context_SANDBOX_ownership_NONE_privilege_WORKER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 57, "privilege": "worker"}, "organization": null}, "resource": {"id": 333, "owner": {"id": 499}, "assignee": {"id": 562}, "organization": {"id": 609}}}
}

test_scope_UPDATE_ASSIGNEE_context_SANDBOX_ownership_NONE_privilege_NONE_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 51, "privilege": "none"}, "organization": null}, "resource": {"id": 304, "owner": {"id": 453}, "assignee": {"id": 535}, "organization": {"id": 628}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_OWNER_resource_same_org_FALSE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 13, "privilege": "admin"}, "organization": {"id": 165, "owner": {"id": 13}, "user": {"role": "owner"}}}, "resource": {"id": 381, "owner": {"id": 13}, "assignee": {"id": 577}, "organization": {"id": 640}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 44, "privilege": "admin"}, "organization": {"id": 112, "owner": {"id": 44}, "user": {"role": "owner"}}}, "resource": {"id": 384, "owner": {"id": 44}, "assignee": {"id": 534}, "organization": {"id": 112}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_MAINTAINER_resource_same_org_FALSE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 70, "privilege": "admin"}, "organization": {"id": 107, "owner": {"id": 280}, "user": {"role": "maintainer"}}}, "resource": {"id": 361, "owner": {"id": 70}, "assignee": {"id": 532}, "organization": {"id": 615}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 35, "privilege": "admin"}, "organization": {"id": 196, "owner": {"id": 245}, "user": {"role": "maintainer"}}}, "resource": {"id": 358, "owner": {"id": 35}, "assignee": {"id": 598}, "organization": {"id": 196}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_SUPERVISOR_resource_same_org_FALSE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 77, "privilege": "admin"}, "organization": {"id": 187, "owner": {"id": 239}, "user": {"role": "supervisor"}}}, "resource": {"id": 397, "owner": {"id": 77}, "assignee": {"id": 538}, "organization": {"id": 652}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 14, "privilege": "admin"}, "organization": {"id": 128, "owner": {"id": 218}, "user": {"role": "supervisor"}}}, "resource": {"id": 314, "owner": {"id": 14}, "assignee": {"id": 534}, "organization": {"id": 128}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_WORKER_resource_same_org_FALSE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 38, "privilege": "admin"}, "organization": {"id": 195, "owner": {"id": 251}, "user": {"role": "worker"}}}, "resource": {"id": 351, "owner": {"id": 38}, "assignee": {"id": 598}, "organization": {"id": 605}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 57, "privilege": "admin"}, "organization": {"id": 126, "owner": {"id": 202}, "user": {"role": "worker"}}}, "resource": {"id": 395, "owner": {"id": 57}, "assignee": {"id": 523}, "organization": {"id": 126}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_NONE_resource_same_org_FALSE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 8, "privilege": "admin"}, "organization": {"id": 103, "owner": {"id": 262}, "user": {"role": null}}}, "resource": {"id": 386, "owner": {"id": 8}, "assignee": {"id": 571}, "organization": {"id": 693}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 76, "privilege": "admin"}, "organization": {"id": 161, "owner": {"id": 231}, "user": {"role": null}}}, "resource": {"id": 335, "owner": {"id": 76}, "assignee": {"id": 502}, "organization": {"id": 161}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 26, "privilege": "business"}, "organization": {"id": 166, "owner": {"id": 26}, "user": {"role": "owner"}}}, "resource": {"id": 323, "owner": {"id": 26}, "assignee": {"id": 554}, "organization": {"id": 653}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 75, "privilege": "business"}, "organization": {"id": 168, "owner": {"id": 75}, "user": {"role": "owner"}}}, "resource": {"id": 331, "owner": {"id": 75}, "assignee": {"id": 578}, "organization": {"id": 168}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 27, "privilege": "business"}, "organization": {"id": 107, "owner": {"id": 264}, "user": {"role": "maintainer"}}}, "resource": {"id": 314, "owner": {"id": 27}, "assignee": {"id": 523}, "organization": {"id": 659}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 81, "privilege": "business"}, "organization": {"id": 133, "owner": {"id": 270}, "user": {"role": "maintainer"}}}, "resource": {"id": 323, "owner": {"id": 81}, "assignee": {"id": 593}, "organization": {"id": 133}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 95, "privilege": "business"}, "organization": {"id": 198, "owner": {"id": 234}, "user": {"role": "supervisor"}}}, "resource": {"id": 345, "owner": {"id": 95}, "assignee": {"id": 507}, "organization": {"id": 697}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 77, "privilege": "business"}, "organization": {"id": 174, "owner": {"id": 261}, "user": {"role": "supervisor"}}}, "resource": {"id": 367, "owner": {"id": 77}, "assignee": {"id": 561}, "organization": {"id": 174}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 43, "privilege": "business"}, "organization": {"id": 108, "owner": {"id": 233}, "user": {"role": "worker"}}}, "resource": {"id": 309, "owner": {"id": 43}, "assignee": {"id": 527}, "organization": {"id": 627}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 5, "privilege": "business"}, "organization": {"id": 165, "owner": {"id": 271}, "user": {"role": "worker"}}}, "resource": {"id": 382, "owner": {"id": 5}, "assignee": {"id": 520}, "organization": {"id": 165}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 84, "privilege": "business"}, "organization": {"id": 101, "owner": {"id": 260}, "user": {"role": null}}}, "resource": {"id": 393, "owner": {"id": 84}, "assignee": {"id": 537}, "organization": {"id": 674}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 1, "privilege": "business"}, "organization": {"id": 133, "owner": {"id": 234}, "user": {"role": null}}}, "resource": {"id": 397, "owner": {"id": 1}, "assignee": {"id": 578}, "organization": {"id": 133}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 60, "privilege": "user"}, "organization": {"id": 170, "owner": {"id": 60}, "user": {"role": "owner"}}}, "resource": {"id": 312, "owner": {"id": 60}, "assignee": {"id": 514}, "organization": {"id": 625}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 49, "privilege": "user"}, "organization": {"id": 154, "owner": {"id": 49}, "user": {"role": "owner"}}}, "resource": {"id": 304, "owner": {"id": 49}, "assignee": {"id": 564}, "organization": {"id": 154}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 10, "privilege": "user"}, "organization": {"id": 118, "owner": {"id": 206}, "user": {"role": "maintainer"}}}, "resource": {"id": 399, "owner": {"id": 10}, "assignee": {"id": 504}, "organization": {"id": 638}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 4, "privilege": "user"}, "organization": {"id": 115, "owner": {"id": 288}, "user": {"role": "maintainer"}}}, "resource": {"id": 313, "owner": {"id": 4}, "assignee": {"id": 548}, "organization": {"id": 115}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 83, "privilege": "user"}, "organization": {"id": 146, "owner": {"id": 261}, "user": {"role": "supervisor"}}}, "resource": {"id": 305, "owner": {"id": 83}, "assignee": {"id": 524}, "organization": {"id": 660}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 72, "privilege": "user"}, "organization": {"id": 178, "owner": {"id": 220}, "user": {"role": "supervisor"}}}, "resource": {"id": 368, "owner": {"id": 72}, "assignee": {"id": 548}, "organization": {"id": 178}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 45, "privilege": "user"}, "organization": {"id": 176, "owner": {"id": 239}, "user": {"role": "worker"}}}, "resource": {"id": 337, "owner": {"id": 45}, "assignee": {"id": 500}, "organization": {"id": 626}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 72, "privilege": "user"}, "organization": {"id": 175, "owner": {"id": 295}, "user": {"role": "worker"}}}, "resource": {"id": 398, "owner": {"id": 72}, "assignee": {"id": 538}, "organization": {"id": 175}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 4, "privilege": "user"}, "organization": {"id": 148, "owner": {"id": 229}, "user": {"role": null}}}, "resource": {"id": 317, "owner": {"id": 4}, "assignee": {"id": 552}, "organization": {"id": 653}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 41, "privilege": "user"}, "organization": {"id": 138, "owner": {"id": 266}, "user": {"role": null}}}, "resource": {"id": 317, "owner": {"id": 41}, "assignee": {"id": 547}, "organization": {"id": 138}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 92, "privilege": "worker"}, "organization": {"id": 121, "owner": {"id": 92}, "user": {"role": "owner"}}}, "resource": {"id": 306, "owner": {"id": 92}, "assignee": {"id": 549}, "organization": {"id": 670}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 80, "privilege": "worker"}, "organization": {"id": 128, "owner": {"id": 80}, "user": {"role": "owner"}}}, "resource": {"id": 341, "owner": {"id": 80}, "assignee": {"id": 528}, "organization": {"id": 128}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 97, "privilege": "worker"}, "organization": {"id": 104, "owner": {"id": 276}, "user": {"role": "maintainer"}}}, "resource": {"id": 315, "owner": {"id": 97}, "assignee": {"id": 535}, "organization": {"id": 669}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 5, "privilege": "worker"}, "organization": {"id": 167, "owner": {"id": 248}, "user": {"role": "maintainer"}}}, "resource": {"id": 361, "owner": {"id": 5}, "assignee": {"id": 551}, "organization": {"id": 167}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 98, "privilege": "worker"}, "organization": {"id": 168, "owner": {"id": 287}, "user": {"role": "supervisor"}}}, "resource": {"id": 381, "owner": {"id": 98}, "assignee": {"id": 527}, "organization": {"id": 613}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 26, "privilege": "worker"}, "organization": {"id": 191, "owner": {"id": 285}, "user": {"role": "supervisor"}}}, "resource": {"id": 308, "owner": {"id": 26}, "assignee": {"id": 500}, "organization": {"id": 191}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 17, "privilege": "worker"}, "organization": {"id": 172, "owner": {"id": 255}, "user": {"role": "worker"}}}, "resource": {"id": 305, "owner": {"id": 17}, "assignee": {"id": 502}, "organization": {"id": 652}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 2, "privilege": "worker"}, "organization": {"id": 166, "owner": {"id": 248}, "user": {"role": "worker"}}}, "resource": {"id": 392, "owner": {"id": 2}, "assignee": {"id": 597}, "organization": {"id": 166}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 60, "privilege": "worker"}, "organization": {"id": 127, "owner": {"id": 299}, "user": {"role": null}}}, "resource": {"id": 319, "owner": {"id": 60}, "assignee": {"id": 596}, "organization": {"id": 654}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 67, "privilege": "worker"}, "organization": {"id": 106, "owner": {"id": 269}, "user": {"role": null}}}, "resource": {"id": 382, "owner": {"id": 67}, "assignee": {"id": 505}, "organization": {"id": 106}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 47, "privilege": "none"}, "organization": {"id": 148, "owner": {"id": 47}, "user": {"role": "owner"}}}, "resource": {"id": 370, "owner": {"id": 47}, "assignee": {"id": 573}, "organization": {"id": 615}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_OWNER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 28, "privilege": "none"}, "organization": {"id": 119, "owner": {"id": 28}, "user": {"role": "owner"}}}, "resource": {"id": 370, "owner": {"id": 28}, "assignee": {"id": 501}, "organization": {"id": 119}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 0, "privilege": "none"}, "organization": {"id": 110, "owner": {"id": 271}, "user": {"role": "maintainer"}}}, "resource": {"id": 305, "owner": {"id": 0}, "assignee": {"id": 557}, "organization": {"id": 697}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_MAINTAINER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 89, "privilege": "none"}, "organization": {"id": 118, "owner": {"id": 215}, "user": {"role": "maintainer"}}}, "resource": {"id": 309, "owner": {"id": 89}, "assignee": {"id": 592}, "organization": {"id": 118}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 7, "privilege": "none"}, "organization": {"id": 137, "owner": {"id": 231}, "user": {"role": "supervisor"}}}, "resource": {"id": 382, "owner": {"id": 7}, "assignee": {"id": 550}, "organization": {"id": 670}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_SUPERVISOR_resource_same_org_TRUE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 93, "privilege": "none"}, "organization": {"id": 106, "owner": {"id": 297}, "user": {"role": "supervisor"}}}, "resource": {"id": 365, "owner": {"id": 93}, "assignee": {"id": 536}, "organization": {"id": 106}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 23, "privilege": "none"}, "organization": {"id": 162, "owner": {"id": 221}, "user": {"role": "worker"}}}, "resource": {"id": 319, "owner": {"id": 23}, "assignee": {"id": 582}, "organization": {"id": 674}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_WORKER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 88, "privilege": "none"}, "organization": {"id": 195, "owner": {"id": 291}, "user": {"role": "worker"}}}, "resource": {"id": 311, "owner": {"id": 88}, "assignee": {"id": 583}, "organization": {"id": 195}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 21, "privilege": "none"}, "organization": {"id": 161, "owner": {"id": 255}, "user": {"role": null}}}, "resource": {"id": 304, "owner": {"id": 21}, "assignee": {"id": 527}, "organization": {"id": 670}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 0, "privilege": "none"}, "organization": {"id": 129, "owner": {"id": 246}, "user": {"role": null}}}, "resource": {"id": 318, "owner": {"id": 0}, "assignee": {"id": 547}, "organization": {"id": 129}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_OWNER_resource_same_org_FALSE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 59, "privilege": "admin"}, "organization": {"id": 195, "owner": {"id": 59}, "user": {"role": "owner"}}}, "resource": {"id": 396, "owner": {"id": 486}, "assignee": {"id": 59}, "organization": {"id": 603}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 78, "privilege": "admin"}, "organization": {"id": 162, "owner": {"id": 78}, "user": {"role": "owner"}}}, "resource": {"id": 317, "owner": {"id": 404}, "assignee": {"id": 78}, "organization": {"id": 162}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_MAINTAINER_resource_same_org_FALSE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 85, "privilege": "admin"}, "organization": {"id": 178, "owner": {"id": 203}, "user": {"role": "maintainer"}}}, "resource": {"id": 300, "owner": {"id": 440}, "assignee": {"id": 85}, "organization": {"id": 619}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 58, "privilege": "admin"}, "organization": {"id": 160, "owner": {"id": 236}, "user": {"role": "maintainer"}}}, "resource": {"id": 395, "owner": {"id": 469}, "assignee": {"id": 58}, "organization": {"id": 160}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_SUPERVISOR_resource_same_org_FALSE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 48, "privilege": "admin"}, "organization": {"id": 157, "owner": {"id": 242}, "user": {"role": "supervisor"}}}, "resource": {"id": 365, "owner": {"id": 441}, "assignee": {"id": 48}, "organization": {"id": 640}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 86, "privilege": "admin"}, "organization": {"id": 123, "owner": {"id": 212}, "user": {"role": "supervisor"}}}, "resource": {"id": 354, "owner": {"id": 450}, "assignee": {"id": 86}, "organization": {"id": 123}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_WORKER_resource_same_org_FALSE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 21, "privilege": "admin"}, "organization": {"id": 155, "owner": {"id": 230}, "user": {"role": "worker"}}}, "resource": {"id": 396, "owner": {"id": 424}, "assignee": {"id": 21}, "organization": {"id": 668}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 33, "privilege": "admin"}, "organization": {"id": 137, "owner": {"id": 281}, "user": {"role": "worker"}}}, "resource": {"id": 324, "owner": {"id": 496}, "assignee": {"id": 33}, "organization": {"id": 137}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_NONE_resource_same_org_FALSE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 53, "privilege": "admin"}, "organization": {"id": 177, "owner": {"id": 222}, "user": {"role": null}}}, "resource": {"id": 328, "owner": {"id": 499}, "assignee": {"id": 53}, "organization": {"id": 671}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 76, "privilege": "admin"}, "organization": {"id": 147, "owner": {"id": 229}, "user": {"role": null}}}, "resource": {"id": 388, "owner": {"id": 434}, "assignee": {"id": 76}, "organization": {"id": 147}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 43, "privilege": "business"}, "organization": {"id": 119, "owner": {"id": 43}, "user": {"role": "owner"}}}, "resource": {"id": 376, "owner": {"id": 485}, "assignee": {"id": 43}, "organization": {"id": 600}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 8, "privilege": "business"}, "organization": {"id": 142, "owner": {"id": 8}, "user": {"role": "owner"}}}, "resource": {"id": 399, "owner": {"id": 475}, "assignee": {"id": 8}, "organization": {"id": 142}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 61, "privilege": "business"}, "organization": {"id": 189, "owner": {"id": 211}, "user": {"role": "maintainer"}}}, "resource": {"id": 392, "owner": {"id": 461}, "assignee": {"id": 61}, "organization": {"id": 666}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 93, "privilege": "business"}, "organization": {"id": 141, "owner": {"id": 222}, "user": {"role": "maintainer"}}}, "resource": {"id": 385, "owner": {"id": 480}, "assignee": {"id": 93}, "organization": {"id": 141}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 87, "privilege": "business"}, "organization": {"id": 195, "owner": {"id": 238}, "user": {"role": "supervisor"}}}, "resource": {"id": 300, "owner": {"id": 462}, "assignee": {"id": 87}, "organization": {"id": 625}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_SUPERVISOR_resource_same_org_TRUE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 29, "privilege": "business"}, "organization": {"id": 183, "owner": {"id": 205}, "user": {"role": "supervisor"}}}, "resource": {"id": 347, "owner": {"id": 486}, "assignee": {"id": 29}, "organization": {"id": 183}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 86, "privilege": "business"}, "organization": {"id": 184, "owner": {"id": 201}, "user": {"role": "worker"}}}, "resource": {"id": 348, "owner": {"id": 434}, "assignee": {"id": 86}, "organization": {"id": 648}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_WORKER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 59, "privilege": "business"}, "organization": {"id": 155, "owner": {"id": 282}, "user": {"role": "worker"}}}, "resource": {"id": 390, "owner": {"id": 462}, "assignee": {"id": 59}, "organization": {"id": 155}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 38, "privilege": "business"}, "organization": {"id": 196, "owner": {"id": 221}, "user": {"role": null}}}, "resource": {"id": 322, "owner": {"id": 407}, "assignee": {"id": 38}, "organization": {"id": 624}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 33, "privilege": "business"}, "organization": {"id": 158, "owner": {"id": 263}, "user": {"role": null}}}, "resource": {"id": 323, "owner": {"id": 422}, "assignee": {"id": 33}, "organization": {"id": 158}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 18, "privilege": "user"}, "organization": {"id": 151, "owner": {"id": 18}, "user": {"role": "owner"}}}, "resource": {"id": 306, "owner": {"id": 440}, "assignee": {"id": 18}, "organization": {"id": 693}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 68, "privilege": "user"}, "organization": {"id": 147, "owner": {"id": 68}, "user": {"role": "owner"}}}, "resource": {"id": 369, "owner": {"id": 408}, "assignee": {"id": 68}, "organization": {"id": 147}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 89, "privilege": "user"}, "organization": {"id": 184, "owner": {"id": 294}, "user": {"role": "maintainer"}}}, "resource": {"id": 370, "owner": {"id": 415}, "assignee": {"id": 89}, "organization": {"id": 667}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 43, "privilege": "user"}, "organization": {"id": 107, "owner": {"id": 215}, "user": {"role": "maintainer"}}}, "resource": {"id": 390, "owner": {"id": 477}, "assignee": {"id": 43}, "organization": {"id": 107}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 96, "privilege": "user"}, "organization": {"id": 168, "owner": {"id": 254}, "user": {"role": "supervisor"}}}, "resource": {"id": 310, "owner": {"id": 488}, "assignee": {"id": 96}, "organization": {"id": 609}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_SUPERVISOR_resource_same_org_TRUE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 43, "privilege": "user"}, "organization": {"id": 190, "owner": {"id": 224}, "user": {"role": "supervisor"}}}, "resource": {"id": 360, "owner": {"id": 468}, "assignee": {"id": 43}, "organization": {"id": 190}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 24, "privilege": "user"}, "organization": {"id": 192, "owner": {"id": 276}, "user": {"role": "worker"}}}, "resource": {"id": 337, "owner": {"id": 424}, "assignee": {"id": 24}, "organization": {"id": 644}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_WORKER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 51, "privilege": "user"}, "organization": {"id": 121, "owner": {"id": 266}, "user": {"role": "worker"}}}, "resource": {"id": 362, "owner": {"id": 457}, "assignee": {"id": 51}, "organization": {"id": 121}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 44, "privilege": "user"}, "organization": {"id": 132, "owner": {"id": 224}, "user": {"role": null}}}, "resource": {"id": 335, "owner": {"id": 453}, "assignee": {"id": 44}, "organization": {"id": 600}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 3, "privilege": "user"}, "organization": {"id": 185, "owner": {"id": 234}, "user": {"role": null}}}, "resource": {"id": 317, "owner": {"id": 467}, "assignee": {"id": 3}, "organization": {"id": 185}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 58, "privilege": "worker"}, "organization": {"id": 196, "owner": {"id": 58}, "user": {"role": "owner"}}}, "resource": {"id": 366, "owner": {"id": 480}, "assignee": {"id": 58}, "organization": {"id": 697}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_OWNER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 56, "privilege": "worker"}, "organization": {"id": 121, "owner": {"id": 56}, "user": {"role": "owner"}}}, "resource": {"id": 316, "owner": {"id": 497}, "assignee": {"id": 56}, "organization": {"id": 121}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 36, "privilege": "worker"}, "organization": {"id": 113, "owner": {"id": 229}, "user": {"role": "maintainer"}}}, "resource": {"id": 326, "owner": {"id": 475}, "assignee": {"id": 36}, "organization": {"id": 666}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_MAINTAINER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 4, "privilege": "worker"}, "organization": {"id": 130, "owner": {"id": 232}, "user": {"role": "maintainer"}}}, "resource": {"id": 381, "owner": {"id": 428}, "assignee": {"id": 4}, "organization": {"id": 130}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 68, "privilege": "worker"}, "organization": {"id": 112, "owner": {"id": 295}, "user": {"role": "supervisor"}}}, "resource": {"id": 336, "owner": {"id": 415}, "assignee": {"id": 68}, "organization": {"id": 657}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_SUPERVISOR_resource_same_org_TRUE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 94, "privilege": "worker"}, "organization": {"id": 147, "owner": {"id": 263}, "user": {"role": "supervisor"}}}, "resource": {"id": 368, "owner": {"id": 438}, "assignee": {"id": 94}, "organization": {"id": 147}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 15, "privilege": "worker"}, "organization": {"id": 134, "owner": {"id": 201}, "user": {"role": "worker"}}}, "resource": {"id": 332, "owner": {"id": 463}, "assignee": {"id": 15}, "organization": {"id": 653}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_WORKER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 20, "privilege": "worker"}, "organization": {"id": 171, "owner": {"id": 265}, "user": {"role": "worker"}}}, "resource": {"id": 379, "owner": {"id": 487}, "assignee": {"id": 20}, "organization": {"id": 171}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 93, "privilege": "worker"}, "organization": {"id": 159, "owner": {"id": 278}, "user": {"role": null}}}, "resource": {"id": 340, "owner": {"id": 413}, "assignee": {"id": 93}, "organization": {"id": 650}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 26, "privilege": "worker"}, "organization": {"id": 111, "owner": {"id": 270}, "user": {"role": null}}}, "resource": {"id": 388, "owner": {"id": 420}, "assignee": {"id": 26}, "organization": {"id": 111}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 23, "privilege": "none"}, "organization": {"id": 102, "owner": {"id": 23}, "user": {"role": "owner"}}}, "resource": {"id": 359, "owner": {"id": 408}, "assignee": {"id": 23}, "organization": {"id": 611}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_OWNER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 74, "privilege": "none"}, "organization": {"id": 197, "owner": {"id": 74}, "user": {"role": "owner"}}}, "resource": {"id": 332, "owner": {"id": 441}, "assignee": {"id": 74}, "organization": {"id": 197}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 87, "privilege": "none"}, "organization": {"id": 126, "owner": {"id": 233}, "user": {"role": "maintainer"}}}, "resource": {"id": 388, "owner": {"id": 474}, "assignee": {"id": 87}, "organization": {"id": 647}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_MAINTAINER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 88, "privilege": "none"}, "organization": {"id": 153, "owner": {"id": 251}, "user": {"role": "maintainer"}}}, "resource": {"id": 336, "owner": {"id": 415}, "assignee": {"id": 88}, "organization": {"id": 153}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 52, "privilege": "none"}, "organization": {"id": 115, "owner": {"id": 270}, "user": {"role": "supervisor"}}}, "resource": {"id": 392, "owner": {"id": 417}, "assignee": {"id": 52}, "organization": {"id": 659}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_SUPERVISOR_resource_same_org_TRUE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 16, "privilege": "none"}, "organization": {"id": 144, "owner": {"id": 272}, "user": {"role": "supervisor"}}}, "resource": {"id": 345, "owner": {"id": 446}, "assignee": {"id": 16}, "organization": {"id": 144}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 42, "privilege": "none"}, "organization": {"id": 187, "owner": {"id": 221}, "user": {"role": "worker"}}}, "resource": {"id": 394, "owner": {"id": 417}, "assignee": {"id": 42}, "organization": {"id": 647}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_WORKER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 24, "privilege": "none"}, "organization": {"id": 193, "owner": {"id": 295}, "user": {"role": "worker"}}}, "resource": {"id": 374, "owner": {"id": 408}, "assignee": {"id": 24}, "organization": {"id": 193}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 40, "privilege": "none"}, "organization": {"id": 170, "owner": {"id": 216}, "user": {"role": null}}}, "resource": {"id": 376, "owner": {"id": 444}, "assignee": {"id": 40}, "organization": {"id": 670}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 77, "privilege": "none"}, "organization": {"id": 110, "owner": {"id": 211}, "user": {"role": null}}}, "resource": {"id": 338, "owner": {"id": 495}, "assignee": {"id": 77}, "organization": {"id": 110}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_OWNER_resource_same_org_FALSE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 13, "privilege": "admin"}, "organization": {"id": 172, "owner": {"id": 13}, "user": {"role": "owner"}}}, "resource": {"id": 355, "owner": {"id": 499}, "assignee": {"id": 564}, "organization": {"id": 694}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 87, "privilege": "admin"}, "organization": {"id": 104, "owner": {"id": 87}, "user": {"role": "owner"}}}, "resource": {"id": 311, "owner": {"id": 469}, "assignee": {"id": 534}, "organization": {"id": 104}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_MAINTAINER_resource_same_org_FALSE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 93, "privilege": "admin"}, "organization": {"id": 144, "owner": {"id": 279}, "user": {"role": "maintainer"}}}, "resource": {"id": 315, "owner": {"id": 411}, "assignee": {"id": 562}, "organization": {"id": 695}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 13, "privilege": "admin"}, "organization": {"id": 170, "owner": {"id": 277}, "user": {"role": "maintainer"}}}, "resource": {"id": 344, "owner": {"id": 451}, "assignee": {"id": 592}, "organization": {"id": 170}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_SUPERVISOR_resource_same_org_FALSE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 23, "privilege": "admin"}, "organization": {"id": 151, "owner": {"id": 276}, "user": {"role": "supervisor"}}}, "resource": {"id": 346, "owner": {"id": 425}, "assignee": {"id": 591}, "organization": {"id": 608}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 48, "privilege": "admin"}, "organization": {"id": 125, "owner": {"id": 277}, "user": {"role": "supervisor"}}}, "resource": {"id": 323, "owner": {"id": 495}, "assignee": {"id": 541}, "organization": {"id": 125}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_WORKER_resource_same_org_FALSE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 30, "privilege": "admin"}, "organization": {"id": 164, "owner": {"id": 264}, "user": {"role": "worker"}}}, "resource": {"id": 359, "owner": {"id": 481}, "assignee": {"id": 544}, "organization": {"id": 678}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 7, "privilege": "admin"}, "organization": {"id": 165, "owner": {"id": 279}, "user": {"role": "worker"}}}, "resource": {"id": 306, "owner": {"id": 437}, "assignee": {"id": 502}, "organization": {"id": 165}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_NONE_resource_same_org_FALSE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 41, "privilege": "admin"}, "organization": {"id": 141, "owner": {"id": 218}, "user": {"role": null}}}, "resource": {"id": 339, "owner": {"id": 471}, "assignee": {"id": 545}, "organization": {"id": 686}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 2, "privilege": "admin"}, "organization": {"id": 109, "owner": {"id": 273}, "user": {"role": null}}}, "resource": {"id": 326, "owner": {"id": 477}, "assignee": {"id": 592}, "organization": {"id": 109}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 8, "privilege": "business"}, "organization": {"id": 187, "owner": {"id": 8}, "user": {"role": "owner"}}}, "resource": {"id": 390, "owner": {"id": 455}, "assignee": {"id": 567}, "organization": {"id": 646}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 13, "privilege": "business"}, "organization": {"id": 194, "owner": {"id": 13}, "user": {"role": "owner"}}}, "resource": {"id": 392, "owner": {"id": 496}, "assignee": {"id": 508}, "organization": {"id": 194}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 78, "privilege": "business"}, "organization": {"id": 137, "owner": {"id": 295}, "user": {"role": "maintainer"}}}, "resource": {"id": 355, "owner": {"id": 477}, "assignee": {"id": 569}, "organization": {"id": 661}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 69, "privilege": "business"}, "organization": {"id": 119, "owner": {"id": 261}, "user": {"role": "maintainer"}}}, "resource": {"id": 329, "owner": {"id": 422}, "assignee": {"id": 578}, "organization": {"id": 119}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 81, "privilege": "business"}, "organization": {"id": 143, "owner": {"id": 235}, "user": {"role": "supervisor"}}}, "resource": {"id": 351, "owner": {"id": 455}, "assignee": {"id": 573}, "organization": {"id": 672}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_SUPERVISOR_resource_same_org_TRUE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 35, "privilege": "business"}, "organization": {"id": 114, "owner": {"id": 268}, "user": {"role": "supervisor"}}}, "resource": {"id": 378, "owner": {"id": 463}, "assignee": {"id": 503}, "organization": {"id": 114}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 67, "privilege": "business"}, "organization": {"id": 177, "owner": {"id": 266}, "user": {"role": "worker"}}}, "resource": {"id": 343, "owner": {"id": 458}, "assignee": {"id": 516}, "organization": {"id": 647}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_WORKER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 74, "privilege": "business"}, "organization": {"id": 136, "owner": {"id": 251}, "user": {"role": "worker"}}}, "resource": {"id": 349, "owner": {"id": 442}, "assignee": {"id": 502}, "organization": {"id": 136}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 27, "privilege": "business"}, "organization": {"id": 170, "owner": {"id": 223}, "user": {"role": null}}}, "resource": {"id": 312, "owner": {"id": 435}, "assignee": {"id": 530}, "organization": {"id": 680}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 44, "privilege": "business"}, "organization": {"id": 182, "owner": {"id": 276}, "user": {"role": null}}}, "resource": {"id": 306, "owner": {"id": 484}, "assignee": {"id": 558}, "organization": {"id": 182}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 40, "privilege": "user"}, "organization": {"id": 179, "owner": {"id": 40}, "user": {"role": "owner"}}}, "resource": {"id": 360, "owner": {"id": 443}, "assignee": {"id": 548}, "organization": {"id": 672}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 4, "privilege": "user"}, "organization": {"id": 176, "owner": {"id": 4}, "user": {"role": "owner"}}}, "resource": {"id": 340, "owner": {"id": 422}, "assignee": {"id": 553}, "organization": {"id": 176}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 48, "privilege": "user"}, "organization": {"id": 153, "owner": {"id": 268}, "user": {"role": "maintainer"}}}, "resource": {"id": 362, "owner": {"id": 466}, "assignee": {"id": 518}, "organization": {"id": 650}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 95, "privilege": "user"}, "organization": {"id": 195, "owner": {"id": 210}, "user": {"role": "maintainer"}}}, "resource": {"id": 338, "owner": {"id": 496}, "assignee": {"id": 571}, "organization": {"id": 195}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 57, "privilege": "user"}, "organization": {"id": 114, "owner": {"id": 260}, "user": {"role": "supervisor"}}}, "resource": {"id": 361, "owner": {"id": 469}, "assignee": {"id": 530}, "organization": {"id": 630}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_SUPERVISOR_resource_same_org_TRUE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 62, "privilege": "user"}, "organization": {"id": 108, "owner": {"id": 273}, "user": {"role": "supervisor"}}}, "resource": {"id": 341, "owner": {"id": 455}, "assignee": {"id": 540}, "organization": {"id": 108}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 51, "privilege": "user"}, "organization": {"id": 177, "owner": {"id": 209}, "user": {"role": "worker"}}}, "resource": {"id": 305, "owner": {"id": 429}, "assignee": {"id": 520}, "organization": {"id": 621}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_WORKER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 40, "privilege": "user"}, "organization": {"id": 154, "owner": {"id": 295}, "user": {"role": "worker"}}}, "resource": {"id": 396, "owner": {"id": 470}, "assignee": {"id": 590}, "organization": {"id": 154}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 54, "privilege": "user"}, "organization": {"id": 175, "owner": {"id": 215}, "user": {"role": null}}}, "resource": {"id": 390, "owner": {"id": 423}, "assignee": {"id": 536}, "organization": {"id": 609}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 80, "privilege": "user"}, "organization": {"id": 130, "owner": {"id": 253}, "user": {"role": null}}}, "resource": {"id": 302, "owner": {"id": 485}, "assignee": {"id": 523}, "organization": {"id": 130}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 87, "privilege": "worker"}, "organization": {"id": 173, "owner": {"id": 87}, "user": {"role": "owner"}}}, "resource": {"id": 302, "owner": {"id": 465}, "assignee": {"id": 557}, "organization": {"id": 604}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_OWNER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 2, "privilege": "worker"}, "organization": {"id": 175, "owner": {"id": 2}, "user": {"role": "owner"}}}, "resource": {"id": 339, "owner": {"id": 485}, "assignee": {"id": 576}, "organization": {"id": 175}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 82, "privilege": "worker"}, "organization": {"id": 179, "owner": {"id": 203}, "user": {"role": "maintainer"}}}, "resource": {"id": 312, "owner": {"id": 421}, "assignee": {"id": 565}, "organization": {"id": 632}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_MAINTAINER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 1, "privilege": "worker"}, "organization": {"id": 122, "owner": {"id": 212}, "user": {"role": "maintainer"}}}, "resource": {"id": 310, "owner": {"id": 420}, "assignee": {"id": 512}, "organization": {"id": 122}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 88, "privilege": "worker"}, "organization": {"id": 193, "owner": {"id": 212}, "user": {"role": "supervisor"}}}, "resource": {"id": 374, "owner": {"id": 475}, "assignee": {"id": 543}, "organization": {"id": 670}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_SUPERVISOR_resource_same_org_TRUE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 72, "privilege": "worker"}, "organization": {"id": 192, "owner": {"id": 235}, "user": {"role": "supervisor"}}}, "resource": {"id": 378, "owner": {"id": 401}, "assignee": {"id": 564}, "organization": {"id": 192}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 1, "privilege": "worker"}, "organization": {"id": 157, "owner": {"id": 231}, "user": {"role": "worker"}}}, "resource": {"id": 363, "owner": {"id": 499}, "assignee": {"id": 573}, "organization": {"id": 626}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_WORKER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 83, "privilege": "worker"}, "organization": {"id": 142, "owner": {"id": 283}, "user": {"role": "worker"}}}, "resource": {"id": 368, "owner": {"id": 464}, "assignee": {"id": 543}, "organization": {"id": 142}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 56, "privilege": "worker"}, "organization": {"id": 106, "owner": {"id": 291}, "user": {"role": null}}}, "resource": {"id": 370, "owner": {"id": 491}, "assignee": {"id": 511}, "organization": {"id": 698}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 81, "privilege": "worker"}, "organization": {"id": 141, "owner": {"id": 254}, "user": {"role": null}}}, "resource": {"id": 361, "owner": {"id": 461}, "assignee": {"id": 515}, "organization": {"id": 141}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 32, "privilege": "none"}, "organization": {"id": 112, "owner": {"id": 32}, "user": {"role": "owner"}}}, "resource": {"id": 383, "owner": {"id": 472}, "assignee": {"id": 572}, "organization": {"id": 690}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_OWNER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 70, "privilege": "none"}, "organization": {"id": 187, "owner": {"id": 70}, "user": {"role": "owner"}}}, "resource": {"id": 343, "owner": {"id": 480}, "assignee": {"id": 539}, "organization": {"id": 187}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 21, "privilege": "none"}, "organization": {"id": 128, "owner": {"id": 274}, "user": {"role": "maintainer"}}}, "resource": {"id": 329, "owner": {"id": 489}, "assignee": {"id": 531}, "organization": {"id": 645}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_MAINTAINER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 38, "privilege": "none"}, "organization": {"id": 190, "owner": {"id": 206}, "user": {"role": "maintainer"}}}, "resource": {"id": 370, "owner": {"id": 401}, "assignee": {"id": 555}, "organization": {"id": 190}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 88, "privilege": "none"}, "organization": {"id": 167, "owner": {"id": 267}, "user": {"role": "supervisor"}}}, "resource": {"id": 300, "owner": {"id": 404}, "assignee": {"id": 567}, "organization": {"id": 665}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_SUPERVISOR_resource_same_org_TRUE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 38, "privilege": "none"}, "organization": {"id": 136, "owner": {"id": 242}, "user": {"role": "supervisor"}}}, "resource": {"id": 366, "owner": {"id": 426}, "assignee": {"id": 508}, "organization": {"id": 136}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 19, "privilege": "none"}, "organization": {"id": 138, "owner": {"id": 204}, "user": {"role": "worker"}}}, "resource": {"id": 309, "owner": {"id": 462}, "assignee": {"id": 504}, "organization": {"id": 666}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_WORKER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 4, "privilege": "none"}, "organization": {"id": 169, "owner": {"id": 289}, "user": {"role": "worker"}}}, "resource": {"id": 329, "owner": {"id": 416}, "assignee": {"id": 528}, "organization": {"id": 169}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 29, "privilege": "none"}, "organization": {"id": 173, "owner": {"id": 254}, "user": {"role": null}}}, "resource": {"id": 316, "owner": {"id": 466}, "assignee": {"id": 556}, "organization": {"id": 618}}}
}

test_scope_UPDATE_ASSIGNEE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:assignee", "auth": {"user": {"id": 23, "privilege": "none"}, "organization": {"id": 128, "owner": {"id": 237}, "user": {"role": null}}}, "resource": {"id": 373, "owner": {"id": 458}, "assignee": {"id": 589}, "organization": {"id": 128}}}
}

test_scope_UPDATE_OWNER_context_SANDBOX_ownership_OWNER_privilege_ADMIN_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "update:owner", "auth": {"user": {"id": 32, "privilege": "admin"}, "organization": null}, "resource": {"id": 337, "owner": {"id": 32}, "assignee": {"id": 515}, "organization": {"id": 688}}}
}

test_scope_UPDATE_OWNER_context_SANDBOX_ownership_OWNER_privilege_BUSINESS_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 52, "privilege": "business"}, "organization": null}, "resource": {"id": 326, "owner": {"id": 52}, "assignee": {"id": 591}, "organization": {"id": 613}}}
}

test_scope_UPDATE_OWNER_context_SANDBOX_ownership_OWNER_privilege_USER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 70, "privilege": "user"}, "organization": null}, "resource": {"id": 370, "owner": {"id": 70}, "assignee": {"id": 535}, "organization": {"id": 641}}}
}

test_scope_UPDATE_OWNER_context_SANDBOX_ownership_OWNER_privilege_WORKER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 24, "privilege": "worker"}, "organization": null}, "resource": {"id": 382, "owner": {"id": 24}, "assignee": {"id": 526}, "organization": {"id": 668}}}
}

test_scope_UPDATE_OWNER_context_SANDBOX_ownership_OWNER_privilege_NONE_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 73, "privilege": "none"}, "organization": null}, "resource": {"id": 318, "owner": {"id": 73}, "assignee": {"id": 553}, "organization": {"id": 612}}}
}

test_scope_UPDATE_OWNER_context_SANDBOX_ownership_ASSIGNEE_privilege_ADMIN_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "update:owner", "auth": {"user": {"id": 88, "privilege": "admin"}, "organization": null}, "resource": {"id": 376, "owner": {"id": 475}, "assignee": {"id": 88}, "organization": {"id": 647}}}
}

test_scope_UPDATE_OWNER_context_SANDBOX_ownership_ASSIGNEE_privilege_BUSINESS_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 95, "privilege": "business"}, "organization": null}, "resource": {"id": 397, "owner": {"id": 406}, "assignee": {"id": 95}, "organization": {"id": 673}}}
}

test_scope_UPDATE_OWNER_context_SANDBOX_ownership_ASSIGNEE_privilege_USER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 5, "privilege": "user"}, "organization": null}, "resource": {"id": 369, "owner": {"id": 410}, "assignee": {"id": 5}, "organization": {"id": 684}}}
}

test_scope_UPDATE_OWNER_context_SANDBOX_ownership_ASSIGNEE_privilege_WORKER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 19, "privilege": "worker"}, "organization": null}, "resource": {"id": 380, "owner": {"id": 479}, "assignee": {"id": 19}, "organization": {"id": 676}}}
}

test_scope_UPDATE_OWNER_context_SANDBOX_ownership_ASSIGNEE_privilege_NONE_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 33, "privilege": "none"}, "organization": null}, "resource": {"id": 352, "owner": {"id": 430}, "assignee": {"id": 33}, "organization": {"id": 630}}}
}

test_scope_UPDATE_OWNER_context_SANDBOX_ownership_NONE_privilege_ADMIN_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "update:owner", "auth": {"user": {"id": 62, "privilege": "admin"}, "organization": null}, "resource": {"id": 357, "owner": {"id": 492}, "assignee": {"id": 516}, "organization": {"id": 619}}}
}

test_scope_UPDATE_OWNER_context_SANDBOX_ownership_NONE_privilege_BUSINESS_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 30, "privilege": "business"}, "organization": null}, "resource": {"id": 308, "owner": {"id": 447}, "assignee": {"id": 552}, "organization": {"id": 672}}}
}

test_scope_UPDATE_OWNER_context_SANDBOX_ownership_NONE_privilege_USER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 53, "privilege": "user"}, "organization": null}, "resource": {"id": 301, "owner": {"id": 446}, "assignee": {"id": 523}, "organization": {"id": 699}}}
}

test_scope_UPDATE_OWNER_context_SANDBOX_ownership_NONE_privilege_WORKER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 44, "privilege": "worker"}, "organization": null}, "resource": {"id": 357, "owner": {"id": 470}, "assignee": {"id": 543}, "organization": {"id": 622}}}
}

test_scope_UPDATE_OWNER_context_SANDBOX_ownership_NONE_privilege_NONE_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 82, "privilege": "none"}, "organization": null}, "resource": {"id": 313, "owner": {"id": 485}, "assignee": {"id": 582}, "organization": {"id": 603}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_OWNER_resource_same_org_FALSE {
    allow with input as {"scope": "update:owner", "auth": {"user": {"id": 87, "privilege": "admin"}, "organization": {"id": 139, "owner": {"id": 87}, "user": {"role": "owner"}}}, "resource": {"id": 370, "owner": {"id": 87}, "assignee": {"id": 572}, "organization": {"id": 627}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "update:owner", "auth": {"user": {"id": 26, "privilege": "admin"}, "organization": {"id": 167, "owner": {"id": 26}, "user": {"role": "owner"}}}, "resource": {"id": 385, "owner": {"id": 26}, "assignee": {"id": 508}, "organization": {"id": 167}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_MAINTAINER_resource_same_org_FALSE {
    allow with input as {"scope": "update:owner", "auth": {"user": {"id": 3, "privilege": "admin"}, "organization": {"id": 107, "owner": {"id": 224}, "user": {"role": "maintainer"}}}, "resource": {"id": 322, "owner": {"id": 3}, "assignee": {"id": 587}, "organization": {"id": 664}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "update:owner", "auth": {"user": {"id": 40, "privilege": "admin"}, "organization": {"id": 194, "owner": {"id": 291}, "user": {"role": "maintainer"}}}, "resource": {"id": 306, "owner": {"id": 40}, "assignee": {"id": 526}, "organization": {"id": 194}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_SUPERVISOR_resource_same_org_FALSE {
    allow with input as {"scope": "update:owner", "auth": {"user": {"id": 73, "privilege": "admin"}, "organization": {"id": 158, "owner": {"id": 270}, "user": {"role": "supervisor"}}}, "resource": {"id": 376, "owner": {"id": 73}, "assignee": {"id": 572}, "organization": {"id": 625}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "update:owner", "auth": {"user": {"id": 89, "privilege": "admin"}, "organization": {"id": 157, "owner": {"id": 292}, "user": {"role": "supervisor"}}}, "resource": {"id": 388, "owner": {"id": 89}, "assignee": {"id": 517}, "organization": {"id": 157}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_WORKER_resource_same_org_FALSE {
    allow with input as {"scope": "update:owner", "auth": {"user": {"id": 92, "privilege": "admin"}, "organization": {"id": 167, "owner": {"id": 250}, "user": {"role": "worker"}}}, "resource": {"id": 327, "owner": {"id": 92}, "assignee": {"id": 542}, "organization": {"id": 639}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "update:owner", "auth": {"user": {"id": 52, "privilege": "admin"}, "organization": {"id": 109, "owner": {"id": 250}, "user": {"role": "worker"}}}, "resource": {"id": 395, "owner": {"id": 52}, "assignee": {"id": 581}, "organization": {"id": 109}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_NONE_resource_same_org_FALSE {
    allow with input as {"scope": "update:owner", "auth": {"user": {"id": 55, "privilege": "admin"}, "organization": {"id": 144, "owner": {"id": 230}, "user": {"role": null}}}, "resource": {"id": 348, "owner": {"id": 55}, "assignee": {"id": 561}, "organization": {"id": 604}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "update:owner", "auth": {"user": {"id": 41, "privilege": "admin"}, "organization": {"id": 122, "owner": {"id": 281}, "user": {"role": null}}}, "resource": {"id": 372, "owner": {"id": 41}, "assignee": {"id": 544}, "organization": {"id": 122}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 34, "privilege": "business"}, "organization": {"id": 199, "owner": {"id": 34}, "user": {"role": "owner"}}}, "resource": {"id": 392, "owner": {"id": 34}, "assignee": {"id": 561}, "organization": {"id": 663}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "update:owner", "auth": {"user": {"id": 22, "privilege": "business"}, "organization": {"id": 140, "owner": {"id": 22}, "user": {"role": "owner"}}}, "resource": {"id": 336, "owner": {"id": 22}, "assignee": {"id": 561}, "organization": {"id": 140}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 99, "privilege": "business"}, "organization": {"id": 163, "owner": {"id": 263}, "user": {"role": "maintainer"}}}, "resource": {"id": 399, "owner": {"id": 99}, "assignee": {"id": 500}, "organization": {"id": 605}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "update:owner", "auth": {"user": {"id": 85, "privilege": "business"}, "organization": {"id": 178, "owner": {"id": 203}, "user": {"role": "maintainer"}}}, "resource": {"id": 397, "owner": {"id": 85}, "assignee": {"id": 522}, "organization": {"id": 178}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 65, "privilege": "business"}, "organization": {"id": 148, "owner": {"id": 283}, "user": {"role": "supervisor"}}}, "resource": {"id": 300, "owner": {"id": 65}, "assignee": {"id": 532}, "organization": {"id": 676}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_SUPERVISOR_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 8, "privilege": "business"}, "organization": {"id": 128, "owner": {"id": 294}, "user": {"role": "supervisor"}}}, "resource": {"id": 380, "owner": {"id": 8}, "assignee": {"id": 503}, "organization": {"id": 128}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 3, "privilege": "business"}, "organization": {"id": 139, "owner": {"id": 235}, "user": {"role": "worker"}}}, "resource": {"id": 359, "owner": {"id": 3}, "assignee": {"id": 524}, "organization": {"id": 640}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_WORKER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 52, "privilege": "business"}, "organization": {"id": 153, "owner": {"id": 231}, "user": {"role": "worker"}}}, "resource": {"id": 378, "owner": {"id": 52}, "assignee": {"id": 526}, "organization": {"id": 153}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 70, "privilege": "business"}, "organization": {"id": 171, "owner": {"id": 272}, "user": {"role": null}}}, "resource": {"id": 308, "owner": {"id": 70}, "assignee": {"id": 585}, "organization": {"id": 639}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 78, "privilege": "business"}, "organization": {"id": 108, "owner": {"id": 203}, "user": {"role": null}}}, "resource": {"id": 393, "owner": {"id": 78}, "assignee": {"id": 560}, "organization": {"id": 108}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 77, "privilege": "user"}, "organization": {"id": 199, "owner": {"id": 77}, "user": {"role": "owner"}}}, "resource": {"id": 331, "owner": {"id": 77}, "assignee": {"id": 551}, "organization": {"id": 656}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "update:owner", "auth": {"user": {"id": 20, "privilege": "user"}, "organization": {"id": 167, "owner": {"id": 20}, "user": {"role": "owner"}}}, "resource": {"id": 363, "owner": {"id": 20}, "assignee": {"id": 549}, "organization": {"id": 167}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 40, "privilege": "user"}, "organization": {"id": 177, "owner": {"id": 276}, "user": {"role": "maintainer"}}}, "resource": {"id": 342, "owner": {"id": 40}, "assignee": {"id": 561}, "organization": {"id": 688}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "update:owner", "auth": {"user": {"id": 32, "privilege": "user"}, "organization": {"id": 107, "owner": {"id": 294}, "user": {"role": "maintainer"}}}, "resource": {"id": 368, "owner": {"id": 32}, "assignee": {"id": 562}, "organization": {"id": 107}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 95, "privilege": "user"}, "organization": {"id": 145, "owner": {"id": 296}, "user": {"role": "supervisor"}}}, "resource": {"id": 308, "owner": {"id": 95}, "assignee": {"id": 532}, "organization": {"id": 643}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_SUPERVISOR_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 65, "privilege": "user"}, "organization": {"id": 140, "owner": {"id": 223}, "user": {"role": "supervisor"}}}, "resource": {"id": 313, "owner": {"id": 65}, "assignee": {"id": 527}, "organization": {"id": 140}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 6, "privilege": "user"}, "organization": {"id": 148, "owner": {"id": 291}, "user": {"role": "worker"}}}, "resource": {"id": 337, "owner": {"id": 6}, "assignee": {"id": 548}, "organization": {"id": 650}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_WORKER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 52, "privilege": "user"}, "organization": {"id": 127, "owner": {"id": 282}, "user": {"role": "worker"}}}, "resource": {"id": 318, "owner": {"id": 52}, "assignee": {"id": 531}, "organization": {"id": 127}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 30, "privilege": "user"}, "organization": {"id": 152, "owner": {"id": 246}, "user": {"role": null}}}, "resource": {"id": 344, "owner": {"id": 30}, "assignee": {"id": 534}, "organization": {"id": 610}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 70, "privilege": "user"}, "organization": {"id": 120, "owner": {"id": 229}, "user": {"role": null}}}, "resource": {"id": 367, "owner": {"id": 70}, "assignee": {"id": 523}, "organization": {"id": 120}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 62, "privilege": "worker"}, "organization": {"id": 147, "owner": {"id": 62}, "user": {"role": "owner"}}}, "resource": {"id": 301, "owner": {"id": 62}, "assignee": {"id": 567}, "organization": {"id": 690}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "update:owner", "auth": {"user": {"id": 37, "privilege": "worker"}, "organization": {"id": 106, "owner": {"id": 37}, "user": {"role": "owner"}}}, "resource": {"id": 310, "owner": {"id": 37}, "assignee": {"id": 540}, "organization": {"id": 106}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 81, "privilege": "worker"}, "organization": {"id": 146, "owner": {"id": 230}, "user": {"role": "maintainer"}}}, "resource": {"id": 326, "owner": {"id": 81}, "assignee": {"id": 534}, "organization": {"id": 681}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "update:owner", "auth": {"user": {"id": 97, "privilege": "worker"}, "organization": {"id": 105, "owner": {"id": 244}, "user": {"role": "maintainer"}}}, "resource": {"id": 345, "owner": {"id": 97}, "assignee": {"id": 501}, "organization": {"id": 105}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 52, "privilege": "worker"}, "organization": {"id": 166, "owner": {"id": 230}, "user": {"role": "supervisor"}}}, "resource": {"id": 340, "owner": {"id": 52}, "assignee": {"id": 579}, "organization": {"id": 688}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_SUPERVISOR_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 76, "privilege": "worker"}, "organization": {"id": 168, "owner": {"id": 243}, "user": {"role": "supervisor"}}}, "resource": {"id": 320, "owner": {"id": 76}, "assignee": {"id": 534}, "organization": {"id": 168}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 48, "privilege": "worker"}, "organization": {"id": 161, "owner": {"id": 235}, "user": {"role": "worker"}}}, "resource": {"id": 350, "owner": {"id": 48}, "assignee": {"id": 515}, "organization": {"id": 694}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_WORKER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 2, "privilege": "worker"}, "organization": {"id": 181, "owner": {"id": 240}, "user": {"role": "worker"}}}, "resource": {"id": 321, "owner": {"id": 2}, "assignee": {"id": 515}, "organization": {"id": 181}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 33, "privilege": "worker"}, "organization": {"id": 189, "owner": {"id": 237}, "user": {"role": null}}}, "resource": {"id": 305, "owner": {"id": 33}, "assignee": {"id": 576}, "organization": {"id": 654}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 86, "privilege": "worker"}, "organization": {"id": 187, "owner": {"id": 225}, "user": {"role": null}}}, "resource": {"id": 351, "owner": {"id": 86}, "assignee": {"id": 569}, "organization": {"id": 187}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 50, "privilege": "none"}, "organization": {"id": 120, "owner": {"id": 50}, "user": {"role": "owner"}}}, "resource": {"id": 309, "owner": {"id": 50}, "assignee": {"id": 574}, "organization": {"id": 631}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_OWNER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 25, "privilege": "none"}, "organization": {"id": 148, "owner": {"id": 25}, "user": {"role": "owner"}}}, "resource": {"id": 383, "owner": {"id": 25}, "assignee": {"id": 529}, "organization": {"id": 148}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 55, "privilege": "none"}, "organization": {"id": 144, "owner": {"id": 224}, "user": {"role": "maintainer"}}}, "resource": {"id": 366, "owner": {"id": 55}, "assignee": {"id": 512}, "organization": {"id": 639}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_MAINTAINER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 66, "privilege": "none"}, "organization": {"id": 129, "owner": {"id": 255}, "user": {"role": "maintainer"}}}, "resource": {"id": 312, "owner": {"id": 66}, "assignee": {"id": 543}, "organization": {"id": 129}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 32, "privilege": "none"}, "organization": {"id": 151, "owner": {"id": 218}, "user": {"role": "supervisor"}}}, "resource": {"id": 338, "owner": {"id": 32}, "assignee": {"id": 500}, "organization": {"id": 644}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_SUPERVISOR_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 19, "privilege": "none"}, "organization": {"id": 160, "owner": {"id": 269}, "user": {"role": "supervisor"}}}, "resource": {"id": 337, "owner": {"id": 19}, "assignee": {"id": 526}, "organization": {"id": 160}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 45, "privilege": "none"}, "organization": {"id": 183, "owner": {"id": 240}, "user": {"role": "worker"}}}, "resource": {"id": 317, "owner": {"id": 45}, "assignee": {"id": 528}, "organization": {"id": 660}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_WORKER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 67, "privilege": "none"}, "organization": {"id": 140, "owner": {"id": 243}, "user": {"role": "worker"}}}, "resource": {"id": 396, "owner": {"id": 67}, "assignee": {"id": 572}, "organization": {"id": 140}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 2, "privilege": "none"}, "organization": {"id": 190, "owner": {"id": 219}, "user": {"role": null}}}, "resource": {"id": 323, "owner": {"id": 2}, "assignee": {"id": 509}, "organization": {"id": 621}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 29, "privilege": "none"}, "organization": {"id": 145, "owner": {"id": 277}, "user": {"role": null}}}, "resource": {"id": 311, "owner": {"id": 29}, "assignee": {"id": 549}, "organization": {"id": 145}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_OWNER_resource_same_org_FALSE {
    allow with input as {"scope": "update:owner", "auth": {"user": {"id": 88, "privilege": "admin"}, "organization": {"id": 167, "owner": {"id": 88}, "user": {"role": "owner"}}}, "resource": {"id": 321, "owner": {"id": 438}, "assignee": {"id": 88}, "organization": {"id": 672}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "update:owner", "auth": {"user": {"id": 75, "privilege": "admin"}, "organization": {"id": 163, "owner": {"id": 75}, "user": {"role": "owner"}}}, "resource": {"id": 383, "owner": {"id": 469}, "assignee": {"id": 75}, "organization": {"id": 163}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_MAINTAINER_resource_same_org_FALSE {
    allow with input as {"scope": "update:owner", "auth": {"user": {"id": 55, "privilege": "admin"}, "organization": {"id": 167, "owner": {"id": 221}, "user": {"role": "maintainer"}}}, "resource": {"id": 320, "owner": {"id": 455}, "assignee": {"id": 55}, "organization": {"id": 699}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "update:owner", "auth": {"user": {"id": 25, "privilege": "admin"}, "organization": {"id": 186, "owner": {"id": 255}, "user": {"role": "maintainer"}}}, "resource": {"id": 399, "owner": {"id": 409}, "assignee": {"id": 25}, "organization": {"id": 186}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_SUPERVISOR_resource_same_org_FALSE {
    allow with input as {"scope": "update:owner", "auth": {"user": {"id": 23, "privilege": "admin"}, "organization": {"id": 104, "owner": {"id": 215}, "user": {"role": "supervisor"}}}, "resource": {"id": 361, "owner": {"id": 445}, "assignee": {"id": 23}, "organization": {"id": 692}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "update:owner", "auth": {"user": {"id": 94, "privilege": "admin"}, "organization": {"id": 186, "owner": {"id": 219}, "user": {"role": "supervisor"}}}, "resource": {"id": 386, "owner": {"id": 403}, "assignee": {"id": 94}, "organization": {"id": 186}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_WORKER_resource_same_org_FALSE {
    allow with input as {"scope": "update:owner", "auth": {"user": {"id": 21, "privilege": "admin"}, "organization": {"id": 151, "owner": {"id": 209}, "user": {"role": "worker"}}}, "resource": {"id": 321, "owner": {"id": 454}, "assignee": {"id": 21}, "organization": {"id": 603}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "update:owner", "auth": {"user": {"id": 40, "privilege": "admin"}, "organization": {"id": 107, "owner": {"id": 290}, "user": {"role": "worker"}}}, "resource": {"id": 333, "owner": {"id": 471}, "assignee": {"id": 40}, "organization": {"id": 107}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_NONE_resource_same_org_FALSE {
    allow with input as {"scope": "update:owner", "auth": {"user": {"id": 7, "privilege": "admin"}, "organization": {"id": 131, "owner": {"id": 229}, "user": {"role": null}}}, "resource": {"id": 307, "owner": {"id": 470}, "assignee": {"id": 7}, "organization": {"id": 694}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "update:owner", "auth": {"user": {"id": 4, "privilege": "admin"}, "organization": {"id": 148, "owner": {"id": 209}, "user": {"role": null}}}, "resource": {"id": 390, "owner": {"id": 468}, "assignee": {"id": 4}, "organization": {"id": 148}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 30, "privilege": "business"}, "organization": {"id": 185, "owner": {"id": 30}, "user": {"role": "owner"}}}, "resource": {"id": 338, "owner": {"id": 496}, "assignee": {"id": 30}, "organization": {"id": 642}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "update:owner", "auth": {"user": {"id": 50, "privilege": "business"}, "organization": {"id": 177, "owner": {"id": 50}, "user": {"role": "owner"}}}, "resource": {"id": 386, "owner": {"id": 418}, "assignee": {"id": 50}, "organization": {"id": 177}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 5, "privilege": "business"}, "organization": {"id": 114, "owner": {"id": 214}, "user": {"role": "maintainer"}}}, "resource": {"id": 306, "owner": {"id": 416}, "assignee": {"id": 5}, "organization": {"id": 649}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "update:owner", "auth": {"user": {"id": 28, "privilege": "business"}, "organization": {"id": 192, "owner": {"id": 227}, "user": {"role": "maintainer"}}}, "resource": {"id": 399, "owner": {"id": 457}, "assignee": {"id": 28}, "organization": {"id": 192}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 53, "privilege": "business"}, "organization": {"id": 191, "owner": {"id": 288}, "user": {"role": "supervisor"}}}, "resource": {"id": 312, "owner": {"id": 446}, "assignee": {"id": 53}, "organization": {"id": 694}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_SUPERVISOR_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 96, "privilege": "business"}, "organization": {"id": 105, "owner": {"id": 225}, "user": {"role": "supervisor"}}}, "resource": {"id": 347, "owner": {"id": 452}, "assignee": {"id": 96}, "organization": {"id": 105}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 47, "privilege": "business"}, "organization": {"id": 133, "owner": {"id": 283}, "user": {"role": "worker"}}}, "resource": {"id": 368, "owner": {"id": 421}, "assignee": {"id": 47}, "organization": {"id": 677}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_WORKER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 47, "privilege": "business"}, "organization": {"id": 146, "owner": {"id": 215}, "user": {"role": "worker"}}}, "resource": {"id": 319, "owner": {"id": 452}, "assignee": {"id": 47}, "organization": {"id": 146}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 43, "privilege": "business"}, "organization": {"id": 187, "owner": {"id": 273}, "user": {"role": null}}}, "resource": {"id": 314, "owner": {"id": 414}, "assignee": {"id": 43}, "organization": {"id": 612}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 86, "privilege": "business"}, "organization": {"id": 155, "owner": {"id": 297}, "user": {"role": null}}}, "resource": {"id": 373, "owner": {"id": 439}, "assignee": {"id": 86}, "organization": {"id": 155}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 75, "privilege": "user"}, "organization": {"id": 172, "owner": {"id": 75}, "user": {"role": "owner"}}}, "resource": {"id": 318, "owner": {"id": 460}, "assignee": {"id": 75}, "organization": {"id": 662}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "update:owner", "auth": {"user": {"id": 98, "privilege": "user"}, "organization": {"id": 102, "owner": {"id": 98}, "user": {"role": "owner"}}}, "resource": {"id": 369, "owner": {"id": 414}, "assignee": {"id": 98}, "organization": {"id": 102}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 9, "privilege": "user"}, "organization": {"id": 122, "owner": {"id": 276}, "user": {"role": "maintainer"}}}, "resource": {"id": 346, "owner": {"id": 421}, "assignee": {"id": 9}, "organization": {"id": 616}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "update:owner", "auth": {"user": {"id": 2, "privilege": "user"}, "organization": {"id": 119, "owner": {"id": 291}, "user": {"role": "maintainer"}}}, "resource": {"id": 352, "owner": {"id": 486}, "assignee": {"id": 2}, "organization": {"id": 119}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 42, "privilege": "user"}, "organization": {"id": 140, "owner": {"id": 217}, "user": {"role": "supervisor"}}}, "resource": {"id": 376, "owner": {"id": 480}, "assignee": {"id": 42}, "organization": {"id": 611}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_SUPERVISOR_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 66, "privilege": "user"}, "organization": {"id": 175, "owner": {"id": 239}, "user": {"role": "supervisor"}}}, "resource": {"id": 371, "owner": {"id": 474}, "assignee": {"id": 66}, "organization": {"id": 175}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 94, "privilege": "user"}, "organization": {"id": 119, "owner": {"id": 218}, "user": {"role": "worker"}}}, "resource": {"id": 340, "owner": {"id": 403}, "assignee": {"id": 94}, "organization": {"id": 654}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_WORKER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 45, "privilege": "user"}, "organization": {"id": 113, "owner": {"id": 265}, "user": {"role": "worker"}}}, "resource": {"id": 391, "owner": {"id": 424}, "assignee": {"id": 45}, "organization": {"id": 113}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 28, "privilege": "user"}, "organization": {"id": 110, "owner": {"id": 205}, "user": {"role": null}}}, "resource": {"id": 342, "owner": {"id": 484}, "assignee": {"id": 28}, "organization": {"id": 691}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 89, "privilege": "user"}, "organization": {"id": 138, "owner": {"id": 241}, "user": {"role": null}}}, "resource": {"id": 316, "owner": {"id": 421}, "assignee": {"id": 89}, "organization": {"id": 138}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 14, "privilege": "worker"}, "organization": {"id": 191, "owner": {"id": 14}, "user": {"role": "owner"}}}, "resource": {"id": 336, "owner": {"id": 493}, "assignee": {"id": 14}, "organization": {"id": 681}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_OWNER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 83, "privilege": "worker"}, "organization": {"id": 148, "owner": {"id": 83}, "user": {"role": "owner"}}}, "resource": {"id": 332, "owner": {"id": 463}, "assignee": {"id": 83}, "organization": {"id": 148}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 82, "privilege": "worker"}, "organization": {"id": 189, "owner": {"id": 239}, "user": {"role": "maintainer"}}}, "resource": {"id": 392, "owner": {"id": 464}, "assignee": {"id": 82}, "organization": {"id": 670}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_MAINTAINER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 15, "privilege": "worker"}, "organization": {"id": 150, "owner": {"id": 296}, "user": {"role": "maintainer"}}}, "resource": {"id": 345, "owner": {"id": 420}, "assignee": {"id": 15}, "organization": {"id": 150}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 11, "privilege": "worker"}, "organization": {"id": 130, "owner": {"id": 258}, "user": {"role": "supervisor"}}}, "resource": {"id": 365, "owner": {"id": 490}, "assignee": {"id": 11}, "organization": {"id": 601}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_SUPERVISOR_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 51, "privilege": "worker"}, "organization": {"id": 171, "owner": {"id": 250}, "user": {"role": "supervisor"}}}, "resource": {"id": 313, "owner": {"id": 446}, "assignee": {"id": 51}, "organization": {"id": 171}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 79, "privilege": "worker"}, "organization": {"id": 196, "owner": {"id": 210}, "user": {"role": "worker"}}}, "resource": {"id": 377, "owner": {"id": 465}, "assignee": {"id": 79}, "organization": {"id": 631}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_WORKER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 29, "privilege": "worker"}, "organization": {"id": 156, "owner": {"id": 224}, "user": {"role": "worker"}}}, "resource": {"id": 380, "owner": {"id": 477}, "assignee": {"id": 29}, "organization": {"id": 156}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 34, "privilege": "worker"}, "organization": {"id": 128, "owner": {"id": 202}, "user": {"role": null}}}, "resource": {"id": 355, "owner": {"id": 431}, "assignee": {"id": 34}, "organization": {"id": 609}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 28, "privilege": "worker"}, "organization": {"id": 137, "owner": {"id": 282}, "user": {"role": null}}}, "resource": {"id": 380, "owner": {"id": 472}, "assignee": {"id": 28}, "organization": {"id": 137}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 86, "privilege": "none"}, "organization": {"id": 131, "owner": {"id": 86}, "user": {"role": "owner"}}}, "resource": {"id": 317, "owner": {"id": 481}, "assignee": {"id": 86}, "organization": {"id": 668}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_OWNER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 95, "privilege": "none"}, "organization": {"id": 106, "owner": {"id": 95}, "user": {"role": "owner"}}}, "resource": {"id": 321, "owner": {"id": 424}, "assignee": {"id": 95}, "organization": {"id": 106}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 41, "privilege": "none"}, "organization": {"id": 151, "owner": {"id": 226}, "user": {"role": "maintainer"}}}, "resource": {"id": 326, "owner": {"id": 441}, "assignee": {"id": 41}, "organization": {"id": 617}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_MAINTAINER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 6, "privilege": "none"}, "organization": {"id": 143, "owner": {"id": 215}, "user": {"role": "maintainer"}}}, "resource": {"id": 342, "owner": {"id": 456}, "assignee": {"id": 6}, "organization": {"id": 143}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 32, "privilege": "none"}, "organization": {"id": 109, "owner": {"id": 297}, "user": {"role": "supervisor"}}}, "resource": {"id": 347, "owner": {"id": 449}, "assignee": {"id": 32}, "organization": {"id": 613}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_SUPERVISOR_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 98, "privilege": "none"}, "organization": {"id": 122, "owner": {"id": 217}, "user": {"role": "supervisor"}}}, "resource": {"id": 391, "owner": {"id": 492}, "assignee": {"id": 98}, "organization": {"id": 122}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 27, "privilege": "none"}, "organization": {"id": 138, "owner": {"id": 221}, "user": {"role": "worker"}}}, "resource": {"id": 353, "owner": {"id": 496}, "assignee": {"id": 27}, "organization": {"id": 622}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_WORKER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 75, "privilege": "none"}, "organization": {"id": 150, "owner": {"id": 275}, "user": {"role": "worker"}}}, "resource": {"id": 323, "owner": {"id": 470}, "assignee": {"id": 75}, "organization": {"id": 150}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 16, "privilege": "none"}, "organization": {"id": 115, "owner": {"id": 287}, "user": {"role": null}}}, "resource": {"id": 353, "owner": {"id": 435}, "assignee": {"id": 16}, "organization": {"id": 683}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 14, "privilege": "none"}, "organization": {"id": 120, "owner": {"id": 283}, "user": {"role": null}}}, "resource": {"id": 361, "owner": {"id": 411}, "assignee": {"id": 14}, "organization": {"id": 120}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_OWNER_resource_same_org_FALSE {
    allow with input as {"scope": "update:owner", "auth": {"user": {"id": 73, "privilege": "admin"}, "organization": {"id": 168, "owner": {"id": 73}, "user": {"role": "owner"}}}, "resource": {"id": 385, "owner": {"id": 414}, "assignee": {"id": 583}, "organization": {"id": 674}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "update:owner", "auth": {"user": {"id": 24, "privilege": "admin"}, "organization": {"id": 187, "owner": {"id": 24}, "user": {"role": "owner"}}}, "resource": {"id": 385, "owner": {"id": 402}, "assignee": {"id": 503}, "organization": {"id": 187}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_MAINTAINER_resource_same_org_FALSE {
    allow with input as {"scope": "update:owner", "auth": {"user": {"id": 43, "privilege": "admin"}, "organization": {"id": 148, "owner": {"id": 267}, "user": {"role": "maintainer"}}}, "resource": {"id": 382, "owner": {"id": 432}, "assignee": {"id": 538}, "organization": {"id": 691}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "update:owner", "auth": {"user": {"id": 84, "privilege": "admin"}, "organization": {"id": 151, "owner": {"id": 252}, "user": {"role": "maintainer"}}}, "resource": {"id": 338, "owner": {"id": 470}, "assignee": {"id": 502}, "organization": {"id": 151}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_SUPERVISOR_resource_same_org_FALSE {
    allow with input as {"scope": "update:owner", "auth": {"user": {"id": 19, "privilege": "admin"}, "organization": {"id": 123, "owner": {"id": 293}, "user": {"role": "supervisor"}}}, "resource": {"id": 356, "owner": {"id": 456}, "assignee": {"id": 512}, "organization": {"id": 600}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "update:owner", "auth": {"user": {"id": 96, "privilege": "admin"}, "organization": {"id": 155, "owner": {"id": 238}, "user": {"role": "supervisor"}}}, "resource": {"id": 396, "owner": {"id": 489}, "assignee": {"id": 561}, "organization": {"id": 155}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_WORKER_resource_same_org_FALSE {
    allow with input as {"scope": "update:owner", "auth": {"user": {"id": 7, "privilege": "admin"}, "organization": {"id": 145, "owner": {"id": 217}, "user": {"role": "worker"}}}, "resource": {"id": 355, "owner": {"id": 477}, "assignee": {"id": 538}, "organization": {"id": 670}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "update:owner", "auth": {"user": {"id": 50, "privilege": "admin"}, "organization": {"id": 106, "owner": {"id": 293}, "user": {"role": "worker"}}}, "resource": {"id": 370, "owner": {"id": 449}, "assignee": {"id": 567}, "organization": {"id": 106}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_NONE_resource_same_org_FALSE {
    allow with input as {"scope": "update:owner", "auth": {"user": {"id": 98, "privilege": "admin"}, "organization": {"id": 145, "owner": {"id": 201}, "user": {"role": null}}}, "resource": {"id": 398, "owner": {"id": 448}, "assignee": {"id": 578}, "organization": {"id": 681}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "update:owner", "auth": {"user": {"id": 25, "privilege": "admin"}, "organization": {"id": 187, "owner": {"id": 248}, "user": {"role": null}}}, "resource": {"id": 306, "owner": {"id": 447}, "assignee": {"id": 559}, "organization": {"id": 187}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 71, "privilege": "business"}, "organization": {"id": 128, "owner": {"id": 71}, "user": {"role": "owner"}}}, "resource": {"id": 356, "owner": {"id": 435}, "assignee": {"id": 506}, "organization": {"id": 619}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "update:owner", "auth": {"user": {"id": 94, "privilege": "business"}, "organization": {"id": 109, "owner": {"id": 94}, "user": {"role": "owner"}}}, "resource": {"id": 371, "owner": {"id": 415}, "assignee": {"id": 542}, "organization": {"id": 109}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 33, "privilege": "business"}, "organization": {"id": 100, "owner": {"id": 214}, "user": {"role": "maintainer"}}}, "resource": {"id": 353, "owner": {"id": 496}, "assignee": {"id": 528}, "organization": {"id": 674}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "update:owner", "auth": {"user": {"id": 0, "privilege": "business"}, "organization": {"id": 163, "owner": {"id": 291}, "user": {"role": "maintainer"}}}, "resource": {"id": 368, "owner": {"id": 428}, "assignee": {"id": 525}, "organization": {"id": 163}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 52, "privilege": "business"}, "organization": {"id": 149, "owner": {"id": 247}, "user": {"role": "supervisor"}}}, "resource": {"id": 301, "owner": {"id": 478}, "assignee": {"id": 504}, "organization": {"id": 635}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_SUPERVISOR_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 59, "privilege": "business"}, "organization": {"id": 171, "owner": {"id": 214}, "user": {"role": "supervisor"}}}, "resource": {"id": 386, "owner": {"id": 407}, "assignee": {"id": 568}, "organization": {"id": 171}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 70, "privilege": "business"}, "organization": {"id": 198, "owner": {"id": 223}, "user": {"role": "worker"}}}, "resource": {"id": 308, "owner": {"id": 445}, "assignee": {"id": 550}, "organization": {"id": 621}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_WORKER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 90, "privilege": "business"}, "organization": {"id": 130, "owner": {"id": 292}, "user": {"role": "worker"}}}, "resource": {"id": 385, "owner": {"id": 477}, "assignee": {"id": 531}, "organization": {"id": 130}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 93, "privilege": "business"}, "organization": {"id": 108, "owner": {"id": 289}, "user": {"role": null}}}, "resource": {"id": 307, "owner": {"id": 486}, "assignee": {"id": 573}, "organization": {"id": 640}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 82, "privilege": "business"}, "organization": {"id": 183, "owner": {"id": 205}, "user": {"role": null}}}, "resource": {"id": 321, "owner": {"id": 489}, "assignee": {"id": 573}, "organization": {"id": 183}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 47, "privilege": "user"}, "organization": {"id": 192, "owner": {"id": 47}, "user": {"role": "owner"}}}, "resource": {"id": 303, "owner": {"id": 451}, "assignee": {"id": 535}, "organization": {"id": 632}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "update:owner", "auth": {"user": {"id": 76, "privilege": "user"}, "organization": {"id": 127, "owner": {"id": 76}, "user": {"role": "owner"}}}, "resource": {"id": 343, "owner": {"id": 451}, "assignee": {"id": 542}, "organization": {"id": 127}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 15, "privilege": "user"}, "organization": {"id": 170, "owner": {"id": 271}, "user": {"role": "maintainer"}}}, "resource": {"id": 337, "owner": {"id": 485}, "assignee": {"id": 549}, "organization": {"id": 631}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "update:owner", "auth": {"user": {"id": 82, "privilege": "user"}, "organization": {"id": 105, "owner": {"id": 226}, "user": {"role": "maintainer"}}}, "resource": {"id": 374, "owner": {"id": 403}, "assignee": {"id": 530}, "organization": {"id": 105}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 44, "privilege": "user"}, "organization": {"id": 186, "owner": {"id": 252}, "user": {"role": "supervisor"}}}, "resource": {"id": 349, "owner": {"id": 414}, "assignee": {"id": 552}, "organization": {"id": 633}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_SUPERVISOR_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 93, "privilege": "user"}, "organization": {"id": 121, "owner": {"id": 298}, "user": {"role": "supervisor"}}}, "resource": {"id": 322, "owner": {"id": 406}, "assignee": {"id": 588}, "organization": {"id": 121}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 30, "privilege": "user"}, "organization": {"id": 195, "owner": {"id": 276}, "user": {"role": "worker"}}}, "resource": {"id": 392, "owner": {"id": 408}, "assignee": {"id": 520}, "organization": {"id": 687}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_WORKER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 68, "privilege": "user"}, "organization": {"id": 103, "owner": {"id": 220}, "user": {"role": "worker"}}}, "resource": {"id": 329, "owner": {"id": 456}, "assignee": {"id": 560}, "organization": {"id": 103}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 1, "privilege": "user"}, "organization": {"id": 175, "owner": {"id": 244}, "user": {"role": null}}}, "resource": {"id": 365, "owner": {"id": 455}, "assignee": {"id": 508}, "organization": {"id": 659}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 28, "privilege": "user"}, "organization": {"id": 150, "owner": {"id": 233}, "user": {"role": null}}}, "resource": {"id": 335, "owner": {"id": 400}, "assignee": {"id": 515}, "organization": {"id": 150}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 62, "privilege": "worker"}, "organization": {"id": 195, "owner": {"id": 62}, "user": {"role": "owner"}}}, "resource": {"id": 329, "owner": {"id": 457}, "assignee": {"id": 565}, "organization": {"id": 698}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_OWNER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 57, "privilege": "worker"}, "organization": {"id": 121, "owner": {"id": 57}, "user": {"role": "owner"}}}, "resource": {"id": 361, "owner": {"id": 447}, "assignee": {"id": 539}, "organization": {"id": 121}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 74, "privilege": "worker"}, "organization": {"id": 145, "owner": {"id": 219}, "user": {"role": "maintainer"}}}, "resource": {"id": 381, "owner": {"id": 429}, "assignee": {"id": 510}, "organization": {"id": 644}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_MAINTAINER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 44, "privilege": "worker"}, "organization": {"id": 132, "owner": {"id": 241}, "user": {"role": "maintainer"}}}, "resource": {"id": 370, "owner": {"id": 439}, "assignee": {"id": 588}, "organization": {"id": 132}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 16, "privilege": "worker"}, "organization": {"id": 123, "owner": {"id": 297}, "user": {"role": "supervisor"}}}, "resource": {"id": 398, "owner": {"id": 472}, "assignee": {"id": 515}, "organization": {"id": 649}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_SUPERVISOR_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 18, "privilege": "worker"}, "organization": {"id": 187, "owner": {"id": 254}, "user": {"role": "supervisor"}}}, "resource": {"id": 360, "owner": {"id": 454}, "assignee": {"id": 565}, "organization": {"id": 187}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 91, "privilege": "worker"}, "organization": {"id": 104, "owner": {"id": 223}, "user": {"role": "worker"}}}, "resource": {"id": 302, "owner": {"id": 409}, "assignee": {"id": 500}, "organization": {"id": 659}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_WORKER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 16, "privilege": "worker"}, "organization": {"id": 164, "owner": {"id": 261}, "user": {"role": "worker"}}}, "resource": {"id": 367, "owner": {"id": 431}, "assignee": {"id": 591}, "organization": {"id": 164}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 69, "privilege": "worker"}, "organization": {"id": 145, "owner": {"id": 294}, "user": {"role": null}}}, "resource": {"id": 379, "owner": {"id": 422}, "assignee": {"id": 570}, "organization": {"id": 650}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 18, "privilege": "worker"}, "organization": {"id": 157, "owner": {"id": 252}, "user": {"role": null}}}, "resource": {"id": 319, "owner": {"id": 427}, "assignee": {"id": 542}, "organization": {"id": 157}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 75, "privilege": "none"}, "organization": {"id": 161, "owner": {"id": 75}, "user": {"role": "owner"}}}, "resource": {"id": 316, "owner": {"id": 480}, "assignee": {"id": 590}, "organization": {"id": 663}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_OWNER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 55, "privilege": "none"}, "organization": {"id": 107, "owner": {"id": 55}, "user": {"role": "owner"}}}, "resource": {"id": 346, "owner": {"id": 471}, "assignee": {"id": 579}, "organization": {"id": 107}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 43, "privilege": "none"}, "organization": {"id": 127, "owner": {"id": 254}, "user": {"role": "maintainer"}}}, "resource": {"id": 373, "owner": {"id": 432}, "assignee": {"id": 524}, "organization": {"id": 666}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_MAINTAINER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 93, "privilege": "none"}, "organization": {"id": 186, "owner": {"id": 284}, "user": {"role": "maintainer"}}}, "resource": {"id": 397, "owner": {"id": 479}, "assignee": {"id": 557}, "organization": {"id": 186}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 80, "privilege": "none"}, "organization": {"id": 104, "owner": {"id": 216}, "user": {"role": "supervisor"}}}, "resource": {"id": 355, "owner": {"id": 480}, "assignee": {"id": 575}, "organization": {"id": 694}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_SUPERVISOR_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 94, "privilege": "none"}, "organization": {"id": 170, "owner": {"id": 246}, "user": {"role": "supervisor"}}}, "resource": {"id": 347, "owner": {"id": 423}, "assignee": {"id": 542}, "organization": {"id": 170}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 61, "privilege": "none"}, "organization": {"id": 165, "owner": {"id": 283}, "user": {"role": "worker"}}}, "resource": {"id": 302, "owner": {"id": 485}, "assignee": {"id": 506}, "organization": {"id": 644}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_WORKER_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 71, "privilege": "none"}, "organization": {"id": 172, "owner": {"id": 288}, "user": {"role": "worker"}}}, "resource": {"id": 362, "owner": {"id": 470}, "assignee": {"id": 509}, "organization": {"id": 172}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 25, "privilege": "none"}, "organization": {"id": 104, "owner": {"id": 206}, "user": {"role": null}}}, "resource": {"id": 326, "owner": {"id": 429}, "assignee": {"id": 541}, "organization": {"id": 640}}}
}

test_scope_UPDATE_OWNER_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "update:owner", "auth": {"user": {"id": 25, "privilege": "none"}, "organization": {"id": 153, "owner": {"id": 275}, "user": {"role": null}}}, "resource": {"id": 301, "owner": {"id": 465}, "assignee": {"id": 527}, "organization": {"id": 153}}}
}

test_scope_VIEW_context_SANDBOX_ownership_OWNER_privilege_ADMIN_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 46, "privilege": "admin"}, "organization": null}, "resource": {"id": 364, "owner": {"id": 46}, "assignee": {"id": 523}, "organization": {"id": 605}}}
}

test_scope_VIEW_context_SANDBOX_ownership_OWNER_privilege_BUSINESS_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 49, "privilege": "business"}, "organization": null}, "resource": {"id": 371, "owner": {"id": 49}, "assignee": {"id": 507}, "organization": {"id": 615}}}
}

test_scope_VIEW_context_SANDBOX_ownership_OWNER_privilege_USER_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 57, "privilege": "user"}, "organization": null}, "resource": {"id": 380, "owner": {"id": 57}, "assignee": {"id": 548}, "organization": {"id": 655}}}
}

test_scope_VIEW_context_SANDBOX_ownership_OWNER_privilege_WORKER_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 28, "privilege": "worker"}, "organization": null}, "resource": {"id": 355, "owner": {"id": 28}, "assignee": {"id": 550}, "organization": {"id": 605}}}
}

test_scope_VIEW_context_SANDBOX_ownership_OWNER_privilege_NONE_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 91, "privilege": "none"}, "organization": null}, "resource": {"id": 359, "owner": {"id": 91}, "assignee": {"id": 568}, "organization": {"id": 669}}}
}

test_scope_VIEW_context_SANDBOX_ownership_ASSIGNEE_privilege_ADMIN_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 61, "privilege": "admin"}, "organization": null}, "resource": {"id": 374, "owner": {"id": 427}, "assignee": {"id": 61}, "organization": {"id": 697}}}
}

test_scope_VIEW_context_SANDBOX_ownership_ASSIGNEE_privilege_BUSINESS_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 95, "privilege": "business"}, "organization": null}, "resource": {"id": 382, "owner": {"id": 453}, "assignee": {"id": 95}, "organization": {"id": 632}}}
}

test_scope_VIEW_context_SANDBOX_ownership_ASSIGNEE_privilege_USER_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 67, "privilege": "user"}, "organization": null}, "resource": {"id": 375, "owner": {"id": 408}, "assignee": {"id": 67}, "organization": {"id": 650}}}
}

test_scope_VIEW_context_SANDBOX_ownership_ASSIGNEE_privilege_WORKER_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 69, "privilege": "worker"}, "organization": null}, "resource": {"id": 323, "owner": {"id": 452}, "assignee": {"id": 69}, "organization": {"id": 619}}}
}

test_scope_VIEW_context_SANDBOX_ownership_ASSIGNEE_privilege_NONE_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 34, "privilege": "none"}, "organization": null}, "resource": {"id": 394, "owner": {"id": 430}, "assignee": {"id": 34}, "organization": {"id": 634}}}
}

test_scope_VIEW_context_SANDBOX_ownership_NONE_privilege_ADMIN_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 27, "privilege": "admin"}, "organization": null}, "resource": {"id": 341, "owner": {"id": 476}, "assignee": {"id": 539}, "organization": {"id": 617}}}
}

test_scope_VIEW_context_SANDBOX_ownership_NONE_privilege_BUSINESS_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 30, "privilege": "business"}, "organization": null}, "resource": {"id": 394, "owner": {"id": 458}, "assignee": {"id": 508}, "organization": {"id": 657}}}
}

test_scope_VIEW_context_SANDBOX_ownership_NONE_privilege_USER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 89, "privilege": "user"}, "organization": null}, "resource": {"id": 395, "owner": {"id": 443}, "assignee": {"id": 534}, "organization": {"id": 675}}}
}

test_scope_VIEW_context_SANDBOX_ownership_NONE_privilege_WORKER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 43, "privilege": "worker"}, "organization": null}, "resource": {"id": 350, "owner": {"id": 496}, "assignee": {"id": 518}, "organization": {"id": 689}}}
}

test_scope_VIEW_context_SANDBOX_ownership_NONE_privilege_NONE_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 88, "privilege": "none"}, "organization": null}, "resource": {"id": 365, "owner": {"id": 433}, "assignee": {"id": 540}, "organization": {"id": 652}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_OWNER_resource_same_org_FALSE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 76, "privilege": "admin"}, "organization": {"id": 137, "owner": {"id": 76}, "user": {"role": "owner"}}}, "resource": {"id": 369, "owner": {"id": 76}, "assignee": {"id": 541}, "organization": {"id": 659}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 39, "privilege": "admin"}, "organization": {"id": 156, "owner": {"id": 39}, "user": {"role": "owner"}}}, "resource": {"id": 328, "owner": {"id": 39}, "assignee": {"id": 526}, "organization": {"id": 156}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_MAINTAINER_resource_same_org_FALSE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 69, "privilege": "admin"}, "organization": {"id": 111, "owner": {"id": 213}, "user": {"role": "maintainer"}}}, "resource": {"id": 361, "owner": {"id": 69}, "assignee": {"id": 568}, "organization": {"id": 672}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 41, "privilege": "admin"}, "organization": {"id": 150, "owner": {"id": 200}, "user": {"role": "maintainer"}}}, "resource": {"id": 335, "owner": {"id": 41}, "assignee": {"id": 599}, "organization": {"id": 150}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_SUPERVISOR_resource_same_org_FALSE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 4, "privilege": "admin"}, "organization": {"id": 114, "owner": {"id": 200}, "user": {"role": "supervisor"}}}, "resource": {"id": 397, "owner": {"id": 4}, "assignee": {"id": 576}, "organization": {"id": 604}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 10, "privilege": "admin"}, "organization": {"id": 185, "owner": {"id": 286}, "user": {"role": "supervisor"}}}, "resource": {"id": 390, "owner": {"id": 10}, "assignee": {"id": 559}, "organization": {"id": 185}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_WORKER_resource_same_org_FALSE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 26, "privilege": "admin"}, "organization": {"id": 141, "owner": {"id": 246}, "user": {"role": "worker"}}}, "resource": {"id": 316, "owner": {"id": 26}, "assignee": {"id": 579}, "organization": {"id": 659}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 25, "privilege": "admin"}, "organization": {"id": 135, "owner": {"id": 271}, "user": {"role": "worker"}}}, "resource": {"id": 339, "owner": {"id": 25}, "assignee": {"id": 578}, "organization": {"id": 135}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_NONE_resource_same_org_FALSE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 37, "privilege": "admin"}, "organization": {"id": 107, "owner": {"id": 244}, "user": {"role": null}}}, "resource": {"id": 303, "owner": {"id": 37}, "assignee": {"id": 556}, "organization": {"id": 604}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 69, "privilege": "admin"}, "organization": {"id": 124, "owner": {"id": 222}, "user": {"role": null}}}, "resource": {"id": 303, "owner": {"id": 69}, "assignee": {"id": 576}, "organization": {"id": 124}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 71, "privilege": "business"}, "organization": {"id": 105, "owner": {"id": 71}, "user": {"role": "owner"}}}, "resource": {"id": 339, "owner": {"id": 71}, "assignee": {"id": 530}, "organization": {"id": 610}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 15, "privilege": "business"}, "organization": {"id": 152, "owner": {"id": 15}, "user": {"role": "owner"}}}, "resource": {"id": 325, "owner": {"id": 15}, "assignee": {"id": 503}, "organization": {"id": 152}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 83, "privilege": "business"}, "organization": {"id": 146, "owner": {"id": 280}, "user": {"role": "maintainer"}}}, "resource": {"id": 312, "owner": {"id": 83}, "assignee": {"id": 555}, "organization": {"id": 686}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 65, "privilege": "business"}, "organization": {"id": 159, "owner": {"id": 250}, "user": {"role": "maintainer"}}}, "resource": {"id": 319, "owner": {"id": 65}, "assignee": {"id": 502}, "organization": {"id": 159}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 93, "privilege": "business"}, "organization": {"id": 126, "owner": {"id": 269}, "user": {"role": "supervisor"}}}, "resource": {"id": 379, "owner": {"id": 93}, "assignee": {"id": 555}, "organization": {"id": 651}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 5, "privilege": "business"}, "organization": {"id": 131, "owner": {"id": 263}, "user": {"role": "supervisor"}}}, "resource": {"id": 351, "owner": {"id": 5}, "assignee": {"id": 532}, "organization": {"id": 131}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 65, "privilege": "business"}, "organization": {"id": 115, "owner": {"id": 286}, "user": {"role": "worker"}}}, "resource": {"id": 362, "owner": {"id": 65}, "assignee": {"id": 542}, "organization": {"id": 658}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 78, "privilege": "business"}, "organization": {"id": 127, "owner": {"id": 264}, "user": {"role": "worker"}}}, "resource": {"id": 377, "owner": {"id": 78}, "assignee": {"id": 555}, "organization": {"id": 127}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 33, "privilege": "business"}, "organization": {"id": 103, "owner": {"id": 299}, "user": {"role": null}}}, "resource": {"id": 355, "owner": {"id": 33}, "assignee": {"id": 557}, "organization": {"id": 633}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 82, "privilege": "business"}, "organization": {"id": 137, "owner": {"id": 210}, "user": {"role": null}}}, "resource": {"id": 386, "owner": {"id": 82}, "assignee": {"id": 570}, "organization": {"id": 137}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 65, "privilege": "user"}, "organization": {"id": 155, "owner": {"id": 65}, "user": {"role": "owner"}}}, "resource": {"id": 351, "owner": {"id": 65}, "assignee": {"id": 542}, "organization": {"id": 679}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 15, "privilege": "user"}, "organization": {"id": 148, "owner": {"id": 15}, "user": {"role": "owner"}}}, "resource": {"id": 396, "owner": {"id": 15}, "assignee": {"id": 513}, "organization": {"id": 148}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 22, "privilege": "user"}, "organization": {"id": 116, "owner": {"id": 230}, "user": {"role": "maintainer"}}}, "resource": {"id": 340, "owner": {"id": 22}, "assignee": {"id": 524}, "organization": {"id": 652}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 94, "privilege": "user"}, "organization": {"id": 179, "owner": {"id": 259}, "user": {"role": "maintainer"}}}, "resource": {"id": 332, "owner": {"id": 94}, "assignee": {"id": 521}, "organization": {"id": 179}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 21, "privilege": "user"}, "organization": {"id": 115, "owner": {"id": 206}, "user": {"role": "supervisor"}}}, "resource": {"id": 304, "owner": {"id": 21}, "assignee": {"id": 589}, "organization": {"id": 674}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 67, "privilege": "user"}, "organization": {"id": 174, "owner": {"id": 298}, "user": {"role": "supervisor"}}}, "resource": {"id": 339, "owner": {"id": 67}, "assignee": {"id": 509}, "organization": {"id": 174}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 44, "privilege": "user"}, "organization": {"id": 196, "owner": {"id": 234}, "user": {"role": "worker"}}}, "resource": {"id": 311, "owner": {"id": 44}, "assignee": {"id": 526}, "organization": {"id": 602}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 20, "privilege": "user"}, "organization": {"id": 136, "owner": {"id": 231}, "user": {"role": "worker"}}}, "resource": {"id": 356, "owner": {"id": 20}, "assignee": {"id": 507}, "organization": {"id": 136}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 65, "privilege": "user"}, "organization": {"id": 108, "owner": {"id": 266}, "user": {"role": null}}}, "resource": {"id": 337, "owner": {"id": 65}, "assignee": {"id": 597}, "organization": {"id": 655}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 41, "privilege": "user"}, "organization": {"id": 113, "owner": {"id": 296}, "user": {"role": null}}}, "resource": {"id": 323, "owner": {"id": 41}, "assignee": {"id": 581}, "organization": {"id": 113}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 47, "privilege": "worker"}, "organization": {"id": 119, "owner": {"id": 47}, "user": {"role": "owner"}}}, "resource": {"id": 305, "owner": {"id": 47}, "assignee": {"id": 522}, "organization": {"id": 634}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 27, "privilege": "worker"}, "organization": {"id": 132, "owner": {"id": 27}, "user": {"role": "owner"}}}, "resource": {"id": 300, "owner": {"id": 27}, "assignee": {"id": 516}, "organization": {"id": 132}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 76, "privilege": "worker"}, "organization": {"id": 182, "owner": {"id": 252}, "user": {"role": "maintainer"}}}, "resource": {"id": 383, "owner": {"id": 76}, "assignee": {"id": 594}, "organization": {"id": 604}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 8, "privilege": "worker"}, "organization": {"id": 194, "owner": {"id": 286}, "user": {"role": "maintainer"}}}, "resource": {"id": 371, "owner": {"id": 8}, "assignee": {"id": 547}, "organization": {"id": 194}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 64, "privilege": "worker"}, "organization": {"id": 123, "owner": {"id": 276}, "user": {"role": "supervisor"}}}, "resource": {"id": 372, "owner": {"id": 64}, "assignee": {"id": 535}, "organization": {"id": 685}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 82, "privilege": "worker"}, "organization": {"id": 185, "owner": {"id": 280}, "user": {"role": "supervisor"}}}, "resource": {"id": 370, "owner": {"id": 82}, "assignee": {"id": 561}, "organization": {"id": 185}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 44, "privilege": "worker"}, "organization": {"id": 181, "owner": {"id": 220}, "user": {"role": "worker"}}}, "resource": {"id": 399, "owner": {"id": 44}, "assignee": {"id": 546}, "organization": {"id": 621}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 71, "privilege": "worker"}, "organization": {"id": 185, "owner": {"id": 230}, "user": {"role": "worker"}}}, "resource": {"id": 387, "owner": {"id": 71}, "assignee": {"id": 569}, "organization": {"id": 185}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 35, "privilege": "worker"}, "organization": {"id": 185, "owner": {"id": 225}, "user": {"role": null}}}, "resource": {"id": 391, "owner": {"id": 35}, "assignee": {"id": 576}, "organization": {"id": 651}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 64, "privilege": "worker"}, "organization": {"id": 165, "owner": {"id": 298}, "user": {"role": null}}}, "resource": {"id": 369, "owner": {"id": 64}, "assignee": {"id": 585}, "organization": {"id": 165}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 82, "privilege": "none"}, "organization": {"id": 158, "owner": {"id": 82}, "user": {"role": "owner"}}}, "resource": {"id": 313, "owner": {"id": 82}, "assignee": {"id": 523}, "organization": {"id": 618}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 70, "privilege": "none"}, "organization": {"id": 199, "owner": {"id": 70}, "user": {"role": "owner"}}}, "resource": {"id": 377, "owner": {"id": 70}, "assignee": {"id": 598}, "organization": {"id": 199}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 44, "privilege": "none"}, "organization": {"id": 172, "owner": {"id": 203}, "user": {"role": "maintainer"}}}, "resource": {"id": 323, "owner": {"id": 44}, "assignee": {"id": 502}, "organization": {"id": 606}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 30, "privilege": "none"}, "organization": {"id": 175, "owner": {"id": 200}, "user": {"role": "maintainer"}}}, "resource": {"id": 384, "owner": {"id": 30}, "assignee": {"id": 547}, "organization": {"id": 175}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 45, "privilege": "none"}, "organization": {"id": 172, "owner": {"id": 267}, "user": {"role": "supervisor"}}}, "resource": {"id": 324, "owner": {"id": 45}, "assignee": {"id": 580}, "organization": {"id": 628}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 55, "privilege": "none"}, "organization": {"id": 118, "owner": {"id": 226}, "user": {"role": "supervisor"}}}, "resource": {"id": 350, "owner": {"id": 55}, "assignee": {"id": 596}, "organization": {"id": 118}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 20, "privilege": "none"}, "organization": {"id": 177, "owner": {"id": 271}, "user": {"role": "worker"}}}, "resource": {"id": 378, "owner": {"id": 20}, "assignee": {"id": 568}, "organization": {"id": 608}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 81, "privilege": "none"}, "organization": {"id": 157, "owner": {"id": 292}, "user": {"role": "worker"}}}, "resource": {"id": 330, "owner": {"id": 81}, "assignee": {"id": 532}, "organization": {"id": 157}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 89, "privilege": "none"}, "organization": {"id": 178, "owner": {"id": 297}, "user": {"role": null}}}, "resource": {"id": 389, "owner": {"id": 89}, "assignee": {"id": 511}, "organization": {"id": 628}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 14, "privilege": "none"}, "organization": {"id": 161, "owner": {"id": 248}, "user": {"role": null}}}, "resource": {"id": 363, "owner": {"id": 14}, "assignee": {"id": 554}, "organization": {"id": 161}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_OWNER_resource_same_org_FALSE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 80, "privilege": "admin"}, "organization": {"id": 194, "owner": {"id": 80}, "user": {"role": "owner"}}}, "resource": {"id": 312, "owner": {"id": 419}, "assignee": {"id": 80}, "organization": {"id": 620}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 13, "privilege": "admin"}, "organization": {"id": 150, "owner": {"id": 13}, "user": {"role": "owner"}}}, "resource": {"id": 311, "owner": {"id": 419}, "assignee": {"id": 13}, "organization": {"id": 150}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_MAINTAINER_resource_same_org_FALSE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 93, "privilege": "admin"}, "organization": {"id": 114, "owner": {"id": 245}, "user": {"role": "maintainer"}}}, "resource": {"id": 352, "owner": {"id": 408}, "assignee": {"id": 93}, "organization": {"id": 606}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 23, "privilege": "admin"}, "organization": {"id": 133, "owner": {"id": 246}, "user": {"role": "maintainer"}}}, "resource": {"id": 387, "owner": {"id": 455}, "assignee": {"id": 23}, "organization": {"id": 133}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_SUPERVISOR_resource_same_org_FALSE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 50, "privilege": "admin"}, "organization": {"id": 196, "owner": {"id": 257}, "user": {"role": "supervisor"}}}, "resource": {"id": 318, "owner": {"id": 417}, "assignee": {"id": 50}, "organization": {"id": 657}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 34, "privilege": "admin"}, "organization": {"id": 134, "owner": {"id": 251}, "user": {"role": "supervisor"}}}, "resource": {"id": 305, "owner": {"id": 480}, "assignee": {"id": 34}, "organization": {"id": 134}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_WORKER_resource_same_org_FALSE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 57, "privilege": "admin"}, "organization": {"id": 171, "owner": {"id": 290}, "user": {"role": "worker"}}}, "resource": {"id": 390, "owner": {"id": 452}, "assignee": {"id": 57}, "organization": {"id": 610}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 11, "privilege": "admin"}, "organization": {"id": 138, "owner": {"id": 263}, "user": {"role": "worker"}}}, "resource": {"id": 324, "owner": {"id": 422}, "assignee": {"id": 11}, "organization": {"id": 138}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_NONE_resource_same_org_FALSE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 39, "privilege": "admin"}, "organization": {"id": 105, "owner": {"id": 286}, "user": {"role": null}}}, "resource": {"id": 396, "owner": {"id": 472}, "assignee": {"id": 39}, "organization": {"id": 662}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 57, "privilege": "admin"}, "organization": {"id": 122, "owner": {"id": 292}, "user": {"role": null}}}, "resource": {"id": 389, "owner": {"id": 441}, "assignee": {"id": 57}, "organization": {"id": 122}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 62, "privilege": "business"}, "organization": {"id": 148, "owner": {"id": 62}, "user": {"role": "owner"}}}, "resource": {"id": 397, "owner": {"id": 437}, "assignee": {"id": 62}, "organization": {"id": 640}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 9, "privilege": "business"}, "organization": {"id": 100, "owner": {"id": 9}, "user": {"role": "owner"}}}, "resource": {"id": 361, "owner": {"id": 445}, "assignee": {"id": 9}, "organization": {"id": 100}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 44, "privilege": "business"}, "organization": {"id": 108, "owner": {"id": 274}, "user": {"role": "maintainer"}}}, "resource": {"id": 319, "owner": {"id": 413}, "assignee": {"id": 44}, "organization": {"id": 689}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 51, "privilege": "business"}, "organization": {"id": 139, "owner": {"id": 293}, "user": {"role": "maintainer"}}}, "resource": {"id": 313, "owner": {"id": 451}, "assignee": {"id": 51}, "organization": {"id": 139}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 78, "privilege": "business"}, "organization": {"id": 192, "owner": {"id": 248}, "user": {"role": "supervisor"}}}, "resource": {"id": 356, "owner": {"id": 487}, "assignee": {"id": 78}, "organization": {"id": 635}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 74, "privilege": "business"}, "organization": {"id": 138, "owner": {"id": 206}, "user": {"role": "supervisor"}}}, "resource": {"id": 318, "owner": {"id": 439}, "assignee": {"id": 74}, "organization": {"id": 138}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 83, "privilege": "business"}, "organization": {"id": 134, "owner": {"id": 206}, "user": {"role": "worker"}}}, "resource": {"id": 313, "owner": {"id": 480}, "assignee": {"id": 83}, "organization": {"id": 678}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 72, "privilege": "business"}, "organization": {"id": 136, "owner": {"id": 251}, "user": {"role": "worker"}}}, "resource": {"id": 352, "owner": {"id": 461}, "assignee": {"id": 72}, "organization": {"id": 136}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 75, "privilege": "business"}, "organization": {"id": 124, "owner": {"id": 200}, "user": {"role": null}}}, "resource": {"id": 389, "owner": {"id": 428}, "assignee": {"id": 75}, "organization": {"id": 661}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 62, "privilege": "business"}, "organization": {"id": 157, "owner": {"id": 213}, "user": {"role": null}}}, "resource": {"id": 354, "owner": {"id": 449}, "assignee": {"id": 62}, "organization": {"id": 157}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 30, "privilege": "user"}, "organization": {"id": 166, "owner": {"id": 30}, "user": {"role": "owner"}}}, "resource": {"id": 353, "owner": {"id": 415}, "assignee": {"id": 30}, "organization": {"id": 662}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 99, "privilege": "user"}, "organization": {"id": 106, "owner": {"id": 99}, "user": {"role": "owner"}}}, "resource": {"id": 350, "owner": {"id": 426}, "assignee": {"id": 99}, "organization": {"id": 106}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 43, "privilege": "user"}, "organization": {"id": 123, "owner": {"id": 281}, "user": {"role": "maintainer"}}}, "resource": {"id": 347, "owner": {"id": 494}, "assignee": {"id": 43}, "organization": {"id": 667}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 4, "privilege": "user"}, "organization": {"id": 135, "owner": {"id": 238}, "user": {"role": "maintainer"}}}, "resource": {"id": 313, "owner": {"id": 420}, "assignee": {"id": 4}, "organization": {"id": 135}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 94, "privilege": "user"}, "organization": {"id": 175, "owner": {"id": 218}, "user": {"role": "supervisor"}}}, "resource": {"id": 322, "owner": {"id": 481}, "assignee": {"id": 94}, "organization": {"id": 680}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 66, "privilege": "user"}, "organization": {"id": 122, "owner": {"id": 226}, "user": {"role": "supervisor"}}}, "resource": {"id": 382, "owner": {"id": 402}, "assignee": {"id": 66}, "organization": {"id": 122}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 33, "privilege": "user"}, "organization": {"id": 195, "owner": {"id": 237}, "user": {"role": "worker"}}}, "resource": {"id": 311, "owner": {"id": 430}, "assignee": {"id": 33}, "organization": {"id": 615}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 80, "privilege": "user"}, "organization": {"id": 127, "owner": {"id": 226}, "user": {"role": "worker"}}}, "resource": {"id": 353, "owner": {"id": 419}, "assignee": {"id": 80}, "organization": {"id": 127}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 55, "privilege": "user"}, "organization": {"id": 183, "owner": {"id": 278}, "user": {"role": null}}}, "resource": {"id": 342, "owner": {"id": 471}, "assignee": {"id": 55}, "organization": {"id": 647}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 29, "privilege": "user"}, "organization": {"id": 152, "owner": {"id": 254}, "user": {"role": null}}}, "resource": {"id": 329, "owner": {"id": 440}, "assignee": {"id": 29}, "organization": {"id": 152}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 62, "privilege": "worker"}, "organization": {"id": 165, "owner": {"id": 62}, "user": {"role": "owner"}}}, "resource": {"id": 379, "owner": {"id": 478}, "assignee": {"id": 62}, "organization": {"id": 694}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 20, "privilege": "worker"}, "organization": {"id": 189, "owner": {"id": 20}, "user": {"role": "owner"}}}, "resource": {"id": 340, "owner": {"id": 442}, "assignee": {"id": 20}, "organization": {"id": 189}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 76, "privilege": "worker"}, "organization": {"id": 175, "owner": {"id": 268}, "user": {"role": "maintainer"}}}, "resource": {"id": 395, "owner": {"id": 499}, "assignee": {"id": 76}, "organization": {"id": 686}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 48, "privilege": "worker"}, "organization": {"id": 122, "owner": {"id": 216}, "user": {"role": "maintainer"}}}, "resource": {"id": 302, "owner": {"id": 404}, "assignee": {"id": 48}, "organization": {"id": 122}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 54, "privilege": "worker"}, "organization": {"id": 135, "owner": {"id": 203}, "user": {"role": "supervisor"}}}, "resource": {"id": 379, "owner": {"id": 407}, "assignee": {"id": 54}, "organization": {"id": 679}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 28, "privilege": "worker"}, "organization": {"id": 170, "owner": {"id": 237}, "user": {"role": "supervisor"}}}, "resource": {"id": 387, "owner": {"id": 479}, "assignee": {"id": 28}, "organization": {"id": 170}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 76, "privilege": "worker"}, "organization": {"id": 122, "owner": {"id": 276}, "user": {"role": "worker"}}}, "resource": {"id": 381, "owner": {"id": 457}, "assignee": {"id": 76}, "organization": {"id": 680}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 65, "privilege": "worker"}, "organization": {"id": 177, "owner": {"id": 245}, "user": {"role": "worker"}}}, "resource": {"id": 349, "owner": {"id": 457}, "assignee": {"id": 65}, "organization": {"id": 177}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 25, "privilege": "worker"}, "organization": {"id": 109, "owner": {"id": 206}, "user": {"role": null}}}, "resource": {"id": 390, "owner": {"id": 454}, "assignee": {"id": 25}, "organization": {"id": 616}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 88, "privilege": "worker"}, "organization": {"id": 150, "owner": {"id": 238}, "user": {"role": null}}}, "resource": {"id": 350, "owner": {"id": 485}, "assignee": {"id": 88}, "organization": {"id": 150}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 29, "privilege": "none"}, "organization": {"id": 163, "owner": {"id": 29}, "user": {"role": "owner"}}}, "resource": {"id": 351, "owner": {"id": 475}, "assignee": {"id": 29}, "organization": {"id": 673}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 33, "privilege": "none"}, "organization": {"id": 110, "owner": {"id": 33}, "user": {"role": "owner"}}}, "resource": {"id": 373, "owner": {"id": 445}, "assignee": {"id": 33}, "organization": {"id": 110}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 92, "privilege": "none"}, "organization": {"id": 144, "owner": {"id": 292}, "user": {"role": "maintainer"}}}, "resource": {"id": 320, "owner": {"id": 417}, "assignee": {"id": 92}, "organization": {"id": 649}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 35, "privilege": "none"}, "organization": {"id": 148, "owner": {"id": 204}, "user": {"role": "maintainer"}}}, "resource": {"id": 305, "owner": {"id": 449}, "assignee": {"id": 35}, "organization": {"id": 148}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 79, "privilege": "none"}, "organization": {"id": 123, "owner": {"id": 276}, "user": {"role": "supervisor"}}}, "resource": {"id": 360, "owner": {"id": 470}, "assignee": {"id": 79}, "organization": {"id": 660}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 26, "privilege": "none"}, "organization": {"id": 162, "owner": {"id": 219}, "user": {"role": "supervisor"}}}, "resource": {"id": 317, "owner": {"id": 414}, "assignee": {"id": 26}, "organization": {"id": 162}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 14, "privilege": "none"}, "organization": {"id": 146, "owner": {"id": 238}, "user": {"role": "worker"}}}, "resource": {"id": 352, "owner": {"id": 481}, "assignee": {"id": 14}, "organization": {"id": 682}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 82, "privilege": "none"}, "organization": {"id": 124, "owner": {"id": 248}, "user": {"role": "worker"}}}, "resource": {"id": 381, "owner": {"id": 430}, "assignee": {"id": 82}, "organization": {"id": 124}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 24, "privilege": "none"}, "organization": {"id": 112, "owner": {"id": 210}, "user": {"role": null}}}, "resource": {"id": 306, "owner": {"id": 485}, "assignee": {"id": 24}, "organization": {"id": 631}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 55, "privilege": "none"}, "organization": {"id": 143, "owner": {"id": 204}, "user": {"role": null}}}, "resource": {"id": 332, "owner": {"id": 463}, "assignee": {"id": 55}, "organization": {"id": 143}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_OWNER_resource_same_org_FALSE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 70, "privilege": "admin"}, "organization": {"id": 137, "owner": {"id": 70}, "user": {"role": "owner"}}}, "resource": {"id": 377, "owner": {"id": 426}, "assignee": {"id": 563}, "organization": {"id": 634}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 50, "privilege": "admin"}, "organization": {"id": 141, "owner": {"id": 50}, "user": {"role": "owner"}}}, "resource": {"id": 350, "owner": {"id": 486}, "assignee": {"id": 525}, "organization": {"id": 141}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_MAINTAINER_resource_same_org_FALSE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 63, "privilege": "admin"}, "organization": {"id": 111, "owner": {"id": 212}, "user": {"role": "maintainer"}}}, "resource": {"id": 363, "owner": {"id": 497}, "assignee": {"id": 525}, "organization": {"id": 633}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 92, "privilege": "admin"}, "organization": {"id": 102, "owner": {"id": 258}, "user": {"role": "maintainer"}}}, "resource": {"id": 347, "owner": {"id": 490}, "assignee": {"id": 579}, "organization": {"id": 102}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_SUPERVISOR_resource_same_org_FALSE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 68, "privilege": "admin"}, "organization": {"id": 185, "owner": {"id": 212}, "user": {"role": "supervisor"}}}, "resource": {"id": 392, "owner": {"id": 477}, "assignee": {"id": 547}, "organization": {"id": 609}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 93, "privilege": "admin"}, "organization": {"id": 164, "owner": {"id": 207}, "user": {"role": "supervisor"}}}, "resource": {"id": 393, "owner": {"id": 498}, "assignee": {"id": 529}, "organization": {"id": 164}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_WORKER_resource_same_org_FALSE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 90, "privilege": "admin"}, "organization": {"id": 198, "owner": {"id": 209}, "user": {"role": "worker"}}}, "resource": {"id": 390, "owner": {"id": 481}, "assignee": {"id": 567}, "organization": {"id": 650}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 66, "privilege": "admin"}, "organization": {"id": 111, "owner": {"id": 209}, "user": {"role": "worker"}}}, "resource": {"id": 396, "owner": {"id": 498}, "assignee": {"id": 593}, "organization": {"id": 111}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_NONE_resource_same_org_FALSE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 31, "privilege": "admin"}, "organization": {"id": 164, "owner": {"id": 226}, "user": {"role": null}}}, "resource": {"id": 339, "owner": {"id": 436}, "assignee": {"id": 577}, "organization": {"id": 695}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 90, "privilege": "admin"}, "organization": {"id": 150, "owner": {"id": 289}, "user": {"role": null}}}, "resource": {"id": 398, "owner": {"id": 488}, "assignee": {"id": 519}, "organization": {"id": 150}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 44, "privilege": "business"}, "organization": {"id": 186, "owner": {"id": 44}, "user": {"role": "owner"}}}, "resource": {"id": 328, "owner": {"id": 440}, "assignee": {"id": 570}, "organization": {"id": 648}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 2, "privilege": "business"}, "organization": {"id": 186, "owner": {"id": 2}, "user": {"role": "owner"}}}, "resource": {"id": 349, "owner": {"id": 459}, "assignee": {"id": 595}, "organization": {"id": 186}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 52, "privilege": "business"}, "organization": {"id": 136, "owner": {"id": 241}, "user": {"role": "maintainer"}}}, "resource": {"id": 341, "owner": {"id": 486}, "assignee": {"id": 532}, "organization": {"id": 643}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 62, "privilege": "business"}, "organization": {"id": 178, "owner": {"id": 293}, "user": {"role": "maintainer"}}}, "resource": {"id": 357, "owner": {"id": 457}, "assignee": {"id": 529}, "organization": {"id": 178}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 17, "privilege": "business"}, "organization": {"id": 157, "owner": {"id": 259}, "user": {"role": "supervisor"}}}, "resource": {"id": 398, "owner": {"id": 467}, "assignee": {"id": 553}, "organization": {"id": 623}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 3, "privilege": "business"}, "organization": {"id": 114, "owner": {"id": 247}, "user": {"role": "supervisor"}}}, "resource": {"id": 353, "owner": {"id": 428}, "assignee": {"id": 585}, "organization": {"id": 114}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 91, "privilege": "business"}, "organization": {"id": 104, "owner": {"id": 203}, "user": {"role": "worker"}}}, "resource": {"id": 395, "owner": {"id": 442}, "assignee": {"id": 513}, "organization": {"id": 663}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 1, "privilege": "business"}, "organization": {"id": 190, "owner": {"id": 202}, "user": {"role": "worker"}}}, "resource": {"id": 324, "owner": {"id": 498}, "assignee": {"id": 506}, "organization": {"id": 190}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 96, "privilege": "business"}, "organization": {"id": 166, "owner": {"id": 278}, "user": {"role": null}}}, "resource": {"id": 356, "owner": {"id": 481}, "assignee": {"id": 509}, "organization": {"id": 681}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 97, "privilege": "business"}, "organization": {"id": 142, "owner": {"id": 282}, "user": {"role": null}}}, "resource": {"id": 389, "owner": {"id": 466}, "assignee": {"id": 593}, "organization": {"id": 142}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 85, "privilege": "user"}, "organization": {"id": 123, "owner": {"id": 85}, "user": {"role": "owner"}}}, "resource": {"id": 355, "owner": {"id": 428}, "assignee": {"id": 571}, "organization": {"id": 619}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 65, "privilege": "user"}, "organization": {"id": 145, "owner": {"id": 65}, "user": {"role": "owner"}}}, "resource": {"id": 350, "owner": {"id": 415}, "assignee": {"id": 579}, "organization": {"id": 145}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 61, "privilege": "user"}, "organization": {"id": 155, "owner": {"id": 231}, "user": {"role": "maintainer"}}}, "resource": {"id": 325, "owner": {"id": 426}, "assignee": {"id": 587}, "organization": {"id": 691}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 78, "privilege": "user"}, "organization": {"id": 133, "owner": {"id": 276}, "user": {"role": "maintainer"}}}, "resource": {"id": 350, "owner": {"id": 447}, "assignee": {"id": 599}, "organization": {"id": 133}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 4, "privilege": "user"}, "organization": {"id": 160, "owner": {"id": 282}, "user": {"role": "supervisor"}}}, "resource": {"id": 311, "owner": {"id": 483}, "assignee": {"id": 582}, "organization": {"id": 605}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 99, "privilege": "user"}, "organization": {"id": 190, "owner": {"id": 259}, "user": {"role": "supervisor"}}}, "resource": {"id": 318, "owner": {"id": 422}, "assignee": {"id": 564}, "organization": {"id": 190}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 67, "privilege": "user"}, "organization": {"id": 199, "owner": {"id": 255}, "user": {"role": "worker"}}}, "resource": {"id": 313, "owner": {"id": 437}, "assignee": {"id": 523}, "organization": {"id": 610}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 81, "privilege": "user"}, "organization": {"id": 134, "owner": {"id": 201}, "user": {"role": "worker"}}}, "resource": {"id": 358, "owner": {"id": 447}, "assignee": {"id": 505}, "organization": {"id": 134}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 25, "privilege": "user"}, "organization": {"id": 119, "owner": {"id": 281}, "user": {"role": null}}}, "resource": {"id": 344, "owner": {"id": 453}, "assignee": {"id": 505}, "organization": {"id": 623}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 98, "privilege": "user"}, "organization": {"id": 138, "owner": {"id": 287}, "user": {"role": null}}}, "resource": {"id": 308, "owner": {"id": 411}, "assignee": {"id": 557}, "organization": {"id": 138}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 18, "privilege": "worker"}, "organization": {"id": 158, "owner": {"id": 18}, "user": {"role": "owner"}}}, "resource": {"id": 390, "owner": {"id": 487}, "assignee": {"id": 561}, "organization": {"id": 638}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 45, "privilege": "worker"}, "organization": {"id": 170, "owner": {"id": 45}, "user": {"role": "owner"}}}, "resource": {"id": 381, "owner": {"id": 458}, "assignee": {"id": 549}, "organization": {"id": 170}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 91, "privilege": "worker"}, "organization": {"id": 101, "owner": {"id": 238}, "user": {"role": "maintainer"}}}, "resource": {"id": 350, "owner": {"id": 473}, "assignee": {"id": 533}, "organization": {"id": 644}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 68, "privilege": "worker"}, "organization": {"id": 121, "owner": {"id": 225}, "user": {"role": "maintainer"}}}, "resource": {"id": 323, "owner": {"id": 498}, "assignee": {"id": 557}, "organization": {"id": 121}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 95, "privilege": "worker"}, "organization": {"id": 141, "owner": {"id": 247}, "user": {"role": "supervisor"}}}, "resource": {"id": 332, "owner": {"id": 429}, "assignee": {"id": 510}, "organization": {"id": 692}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 11, "privilege": "worker"}, "organization": {"id": 161, "owner": {"id": 205}, "user": {"role": "supervisor"}}}, "resource": {"id": 320, "owner": {"id": 472}, "assignee": {"id": 583}, "organization": {"id": 161}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 26, "privilege": "worker"}, "organization": {"id": 111, "owner": {"id": 254}, "user": {"role": "worker"}}}, "resource": {"id": 380, "owner": {"id": 426}, "assignee": {"id": 568}, "organization": {"id": 604}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 70, "privilege": "worker"}, "organization": {"id": 179, "owner": {"id": 200}, "user": {"role": "worker"}}}, "resource": {"id": 390, "owner": {"id": 422}, "assignee": {"id": 530}, "organization": {"id": 179}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 25, "privilege": "worker"}, "organization": {"id": 153, "owner": {"id": 289}, "user": {"role": null}}}, "resource": {"id": 300, "owner": {"id": 474}, "assignee": {"id": 557}, "organization": {"id": 698}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 78, "privilege": "worker"}, "organization": {"id": 177, "owner": {"id": 285}, "user": {"role": null}}}, "resource": {"id": 328, "owner": {"id": 498}, "assignee": {"id": 553}, "organization": {"id": 177}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 63, "privilege": "none"}, "organization": {"id": 101, "owner": {"id": 63}, "user": {"role": "owner"}}}, "resource": {"id": 397, "owner": {"id": 437}, "assignee": {"id": 597}, "organization": {"id": 609}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 28, "privilege": "none"}, "organization": {"id": 117, "owner": {"id": 28}, "user": {"role": "owner"}}}, "resource": {"id": 396, "owner": {"id": 477}, "assignee": {"id": 535}, "organization": {"id": 117}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 48, "privilege": "none"}, "organization": {"id": 159, "owner": {"id": 253}, "user": {"role": "maintainer"}}}, "resource": {"id": 393, "owner": {"id": 456}, "assignee": {"id": 526}, "organization": {"id": 679}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 98, "privilege": "none"}, "organization": {"id": 128, "owner": {"id": 281}, "user": {"role": "maintainer"}}}, "resource": {"id": 369, "owner": {"id": 476}, "assignee": {"id": 556}, "organization": {"id": 128}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 90, "privilege": "none"}, "organization": {"id": 107, "owner": {"id": 293}, "user": {"role": "supervisor"}}}, "resource": {"id": 380, "owner": {"id": 431}, "assignee": {"id": 531}, "organization": {"id": 600}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 89, "privilege": "none"}, "organization": {"id": 153, "owner": {"id": 215}, "user": {"role": "supervisor"}}}, "resource": {"id": 389, "owner": {"id": 400}, "assignee": {"id": 524}, "organization": {"id": 153}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 9, "privilege": "none"}, "organization": {"id": 130, "owner": {"id": 217}, "user": {"role": "worker"}}}, "resource": {"id": 332, "owner": {"id": 478}, "assignee": {"id": 539}, "organization": {"id": 617}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "view", "auth": {"user": {"id": 89, "privilege": "none"}, "organization": {"id": 146, "owner": {"id": 214}, "user": {"role": "worker"}}}, "resource": {"id": 339, "owner": {"id": 421}, "assignee": {"id": 572}, "organization": {"id": 146}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 17, "privilege": "none"}, "organization": {"id": 105, "owner": {"id": 246}, "user": {"role": null}}}, "resource": {"id": 301, "owner": {"id": 416}, "assignee": {"id": 508}, "organization": {"id": 668}}}
}

test_scope_VIEW_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "view", "auth": {"user": {"id": 28, "privilege": "none"}, "organization": {"id": 123, "owner": {"id": 259}, "user": {"role": null}}}, "resource": {"id": 323, "owner": {"id": 444}, "assignee": {"id": 512}, "organization": {"id": 123}}}
}

test_scope_EXPORT_DATASET_context_SANDBOX_ownership_OWNER_privilege_ADMIN_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 34, "privilege": "admin"}, "organization": null}, "resource": {"id": 372, "owner": {"id": 34}, "assignee": {"id": 505}, "organization": {"id": 697}}}
}

test_scope_EXPORT_DATASET_context_SANDBOX_ownership_OWNER_privilege_BUSINESS_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 71, "privilege": "business"}, "organization": null}, "resource": {"id": 347, "owner": {"id": 71}, "assignee": {"id": 513}, "organization": {"id": 689}}}
}

test_scope_EXPORT_DATASET_context_SANDBOX_ownership_OWNER_privilege_USER_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 4, "privilege": "user"}, "organization": null}, "resource": {"id": 356, "owner": {"id": 4}, "assignee": {"id": 508}, "organization": {"id": 625}}}
}

test_scope_EXPORT_DATASET_context_SANDBOX_ownership_OWNER_privilege_WORKER_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 69, "privilege": "worker"}, "organization": null}, "resource": {"id": 301, "owner": {"id": 69}, "assignee": {"id": 534}, "organization": {"id": 640}}}
}

test_scope_EXPORT_DATASET_context_SANDBOX_ownership_OWNER_privilege_NONE_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 23, "privilege": "none"}, "organization": null}, "resource": {"id": 336, "owner": {"id": 23}, "assignee": {"id": 511}, "organization": {"id": 671}}}
}

test_scope_EXPORT_DATASET_context_SANDBOX_ownership_ASSIGNEE_privilege_ADMIN_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 71, "privilege": "admin"}, "organization": null}, "resource": {"id": 347, "owner": {"id": 408}, "assignee": {"id": 71}, "organization": {"id": 607}}}
}

test_scope_EXPORT_DATASET_context_SANDBOX_ownership_ASSIGNEE_privilege_BUSINESS_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 91, "privilege": "business"}, "organization": null}, "resource": {"id": 394, "owner": {"id": 456}, "assignee": {"id": 91}, "organization": {"id": 687}}}
}

test_scope_EXPORT_DATASET_context_SANDBOX_ownership_ASSIGNEE_privilege_USER_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 64, "privilege": "user"}, "organization": null}, "resource": {"id": 388, "owner": {"id": 437}, "assignee": {"id": 64}, "organization": {"id": 676}}}
}

test_scope_EXPORT_DATASET_context_SANDBOX_ownership_ASSIGNEE_privilege_WORKER_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 49, "privilege": "worker"}, "organization": null}, "resource": {"id": 353, "owner": {"id": 420}, "assignee": {"id": 49}, "organization": {"id": 644}}}
}

test_scope_EXPORT_DATASET_context_SANDBOX_ownership_ASSIGNEE_privilege_NONE_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 88, "privilege": "none"}, "organization": null}, "resource": {"id": 319, "owner": {"id": 424}, "assignee": {"id": 88}, "organization": {"id": 609}}}
}

test_scope_EXPORT_DATASET_context_SANDBOX_ownership_NONE_privilege_ADMIN_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 68, "privilege": "admin"}, "organization": null}, "resource": {"id": 305, "owner": {"id": 493}, "assignee": {"id": 592}, "organization": {"id": 608}}}
}

test_scope_EXPORT_DATASET_context_SANDBOX_ownership_NONE_privilege_BUSINESS_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 62, "privilege": "business"}, "organization": null}, "resource": {"id": 378, "owner": {"id": 471}, "assignee": {"id": 544}, "organization": {"id": 612}}}
}

test_scope_EXPORT_DATASET_context_SANDBOX_ownership_NONE_privilege_USER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 30, "privilege": "user"}, "organization": null}, "resource": {"id": 377, "owner": {"id": 494}, "assignee": {"id": 534}, "organization": {"id": 670}}}
}

test_scope_EXPORT_DATASET_context_SANDBOX_ownership_NONE_privilege_WORKER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 63, "privilege": "worker"}, "organization": null}, "resource": {"id": 366, "owner": {"id": 405}, "assignee": {"id": 500}, "organization": {"id": 640}}}
}

test_scope_EXPORT_DATASET_context_SANDBOX_ownership_NONE_privilege_NONE_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 56, "privilege": "none"}, "organization": null}, "resource": {"id": 353, "owner": {"id": 417}, "assignee": {"id": 518}, "organization": {"id": 637}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_OWNER_resource_same_org_FALSE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 59, "privilege": "admin"}, "organization": {"id": 149, "owner": {"id": 59}, "user": {"role": "owner"}}}, "resource": {"id": 397, "owner": {"id": 59}, "assignee": {"id": 512}, "organization": {"id": 669}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 1, "privilege": "admin"}, "organization": {"id": 133, "owner": {"id": 1}, "user": {"role": "owner"}}}, "resource": {"id": 322, "owner": {"id": 1}, "assignee": {"id": 575}, "organization": {"id": 133}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_MAINTAINER_resource_same_org_FALSE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 54, "privilege": "admin"}, "organization": {"id": 141, "owner": {"id": 237}, "user": {"role": "maintainer"}}}, "resource": {"id": 338, "owner": {"id": 54}, "assignee": {"id": 592}, "organization": {"id": 660}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 29, "privilege": "admin"}, "organization": {"id": 175, "owner": {"id": 203}, "user": {"role": "maintainer"}}}, "resource": {"id": 346, "owner": {"id": 29}, "assignee": {"id": 517}, "organization": {"id": 175}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_SUPERVISOR_resource_same_org_FALSE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 77, "privilege": "admin"}, "organization": {"id": 163, "owner": {"id": 244}, "user": {"role": "supervisor"}}}, "resource": {"id": 315, "owner": {"id": 77}, "assignee": {"id": 511}, "organization": {"id": 642}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 5, "privilege": "admin"}, "organization": {"id": 178, "owner": {"id": 272}, "user": {"role": "supervisor"}}}, "resource": {"id": 384, "owner": {"id": 5}, "assignee": {"id": 551}, "organization": {"id": 178}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_WORKER_resource_same_org_FALSE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 1, "privilege": "admin"}, "organization": {"id": 101, "owner": {"id": 283}, "user": {"role": "worker"}}}, "resource": {"id": 370, "owner": {"id": 1}, "assignee": {"id": 563}, "organization": {"id": 629}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 5, "privilege": "admin"}, "organization": {"id": 111, "owner": {"id": 278}, "user": {"role": "worker"}}}, "resource": {"id": 361, "owner": {"id": 5}, "assignee": {"id": 555}, "organization": {"id": 111}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_NONE_resource_same_org_FALSE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 91, "privilege": "admin"}, "organization": {"id": 110, "owner": {"id": 260}, "user": {"role": null}}}, "resource": {"id": 375, "owner": {"id": 91}, "assignee": {"id": 523}, "organization": {"id": 683}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 86, "privilege": "admin"}, "organization": {"id": 137, "owner": {"id": 279}, "user": {"role": null}}}, "resource": {"id": 387, "owner": {"id": 86}, "assignee": {"id": 518}, "organization": {"id": 137}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 94, "privilege": "business"}, "organization": {"id": 127, "owner": {"id": 94}, "user": {"role": "owner"}}}, "resource": {"id": 384, "owner": {"id": 94}, "assignee": {"id": 509}, "organization": {"id": 629}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 21, "privilege": "business"}, "organization": {"id": 170, "owner": {"id": 21}, "user": {"role": "owner"}}}, "resource": {"id": 359, "owner": {"id": 21}, "assignee": {"id": 595}, "organization": {"id": 170}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 43, "privilege": "business"}, "organization": {"id": 150, "owner": {"id": 246}, "user": {"role": "maintainer"}}}, "resource": {"id": 373, "owner": {"id": 43}, "assignee": {"id": 523}, "organization": {"id": 666}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 73, "privilege": "business"}, "organization": {"id": 108, "owner": {"id": 214}, "user": {"role": "maintainer"}}}, "resource": {"id": 312, "owner": {"id": 73}, "assignee": {"id": 521}, "organization": {"id": 108}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 63, "privilege": "business"}, "organization": {"id": 184, "owner": {"id": 266}, "user": {"role": "supervisor"}}}, "resource": {"id": 356, "owner": {"id": 63}, "assignee": {"id": 531}, "organization": {"id": 696}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 76, "privilege": "business"}, "organization": {"id": 141, "owner": {"id": 249}, "user": {"role": "supervisor"}}}, "resource": {"id": 310, "owner": {"id": 76}, "assignee": {"id": 570}, "organization": {"id": 141}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 62, "privilege": "business"}, "organization": {"id": 107, "owner": {"id": 274}, "user": {"role": "worker"}}}, "resource": {"id": 364, "owner": {"id": 62}, "assignee": {"id": 546}, "organization": {"id": 611}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 28, "privilege": "business"}, "organization": {"id": 135, "owner": {"id": 233}, "user": {"role": "worker"}}}, "resource": {"id": 389, "owner": {"id": 28}, "assignee": {"id": 550}, "organization": {"id": 135}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 97, "privilege": "business"}, "organization": {"id": 114, "owner": {"id": 204}, "user": {"role": null}}}, "resource": {"id": 345, "owner": {"id": 97}, "assignee": {"id": 520}, "organization": {"id": 614}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 61, "privilege": "business"}, "organization": {"id": 103, "owner": {"id": 204}, "user": {"role": null}}}, "resource": {"id": 339, "owner": {"id": 61}, "assignee": {"id": 553}, "organization": {"id": 103}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 76, "privilege": "user"}, "organization": {"id": 159, "owner": {"id": 76}, "user": {"role": "owner"}}}, "resource": {"id": 330, "owner": {"id": 76}, "assignee": {"id": 504}, "organization": {"id": 612}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 87, "privilege": "user"}, "organization": {"id": 198, "owner": {"id": 87}, "user": {"role": "owner"}}}, "resource": {"id": 396, "owner": {"id": 87}, "assignee": {"id": 556}, "organization": {"id": 198}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 33, "privilege": "user"}, "organization": {"id": 169, "owner": {"id": 267}, "user": {"role": "maintainer"}}}, "resource": {"id": 368, "owner": {"id": 33}, "assignee": {"id": 507}, "organization": {"id": 608}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 41, "privilege": "user"}, "organization": {"id": 158, "owner": {"id": 296}, "user": {"role": "maintainer"}}}, "resource": {"id": 351, "owner": {"id": 41}, "assignee": {"id": 544}, "organization": {"id": 158}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 98, "privilege": "user"}, "organization": {"id": 100, "owner": {"id": 229}, "user": {"role": "supervisor"}}}, "resource": {"id": 323, "owner": {"id": 98}, "assignee": {"id": 546}, "organization": {"id": 657}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 16, "privilege": "user"}, "organization": {"id": 105, "owner": {"id": 258}, "user": {"role": "supervisor"}}}, "resource": {"id": 371, "owner": {"id": 16}, "assignee": {"id": 567}, "organization": {"id": 105}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 74, "privilege": "user"}, "organization": {"id": 157, "owner": {"id": 246}, "user": {"role": "worker"}}}, "resource": {"id": 312, "owner": {"id": 74}, "assignee": {"id": 559}, "organization": {"id": 623}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 98, "privilege": "user"}, "organization": {"id": 188, "owner": {"id": 238}, "user": {"role": "worker"}}}, "resource": {"id": 363, "owner": {"id": 98}, "assignee": {"id": 541}, "organization": {"id": 188}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 20, "privilege": "user"}, "organization": {"id": 148, "owner": {"id": 294}, "user": {"role": null}}}, "resource": {"id": 370, "owner": {"id": 20}, "assignee": {"id": 581}, "organization": {"id": 667}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 73, "privilege": "user"}, "organization": {"id": 169, "owner": {"id": 248}, "user": {"role": null}}}, "resource": {"id": 385, "owner": {"id": 73}, "assignee": {"id": 524}, "organization": {"id": 169}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 43, "privilege": "worker"}, "organization": {"id": 122, "owner": {"id": 43}, "user": {"role": "owner"}}}, "resource": {"id": 380, "owner": {"id": 43}, "assignee": {"id": 595}, "organization": {"id": 609}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 39, "privilege": "worker"}, "organization": {"id": 107, "owner": {"id": 39}, "user": {"role": "owner"}}}, "resource": {"id": 333, "owner": {"id": 39}, "assignee": {"id": 513}, "organization": {"id": 107}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 96, "privilege": "worker"}, "organization": {"id": 188, "owner": {"id": 284}, "user": {"role": "maintainer"}}}, "resource": {"id": 365, "owner": {"id": 96}, "assignee": {"id": 516}, "organization": {"id": 632}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 53, "privilege": "worker"}, "organization": {"id": 176, "owner": {"id": 240}, "user": {"role": "maintainer"}}}, "resource": {"id": 319, "owner": {"id": 53}, "assignee": {"id": 542}, "organization": {"id": 176}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 44, "privilege": "worker"}, "organization": {"id": 150, "owner": {"id": 245}, "user": {"role": "supervisor"}}}, "resource": {"id": 307, "owner": {"id": 44}, "assignee": {"id": 572}, "organization": {"id": 642}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 8, "privilege": "worker"}, "organization": {"id": 197, "owner": {"id": 273}, "user": {"role": "supervisor"}}}, "resource": {"id": 321, "owner": {"id": 8}, "assignee": {"id": 514}, "organization": {"id": 197}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 26, "privilege": "worker"}, "organization": {"id": 183, "owner": {"id": 288}, "user": {"role": "worker"}}}, "resource": {"id": 304, "owner": {"id": 26}, "assignee": {"id": 547}, "organization": {"id": 651}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 88, "privilege": "worker"}, "organization": {"id": 195, "owner": {"id": 214}, "user": {"role": "worker"}}}, "resource": {"id": 325, "owner": {"id": 88}, "assignee": {"id": 577}, "organization": {"id": 195}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 32, "privilege": "worker"}, "organization": {"id": 173, "owner": {"id": 237}, "user": {"role": null}}}, "resource": {"id": 321, "owner": {"id": 32}, "assignee": {"id": 598}, "organization": {"id": 610}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 63, "privilege": "worker"}, "organization": {"id": 172, "owner": {"id": 212}, "user": {"role": null}}}, "resource": {"id": 361, "owner": {"id": 63}, "assignee": {"id": 506}, "organization": {"id": 172}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 73, "privilege": "none"}, "organization": {"id": 167, "owner": {"id": 73}, "user": {"role": "owner"}}}, "resource": {"id": 386, "owner": {"id": 73}, "assignee": {"id": 582}, "organization": {"id": 687}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 3, "privilege": "none"}, "organization": {"id": 112, "owner": {"id": 3}, "user": {"role": "owner"}}}, "resource": {"id": 363, "owner": {"id": 3}, "assignee": {"id": 560}, "organization": {"id": 112}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 32, "privilege": "none"}, "organization": {"id": 165, "owner": {"id": 207}, "user": {"role": "maintainer"}}}, "resource": {"id": 397, "owner": {"id": 32}, "assignee": {"id": 551}, "organization": {"id": 618}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 63, "privilege": "none"}, "organization": {"id": 197, "owner": {"id": 205}, "user": {"role": "maintainer"}}}, "resource": {"id": 309, "owner": {"id": 63}, "assignee": {"id": 515}, "organization": {"id": 197}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 13, "privilege": "none"}, "organization": {"id": 198, "owner": {"id": 290}, "user": {"role": "supervisor"}}}, "resource": {"id": 316, "owner": {"id": 13}, "assignee": {"id": 579}, "organization": {"id": 695}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 88, "privilege": "none"}, "organization": {"id": 172, "owner": {"id": 279}, "user": {"role": "supervisor"}}}, "resource": {"id": 338, "owner": {"id": 88}, "assignee": {"id": 505}, "organization": {"id": 172}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 73, "privilege": "none"}, "organization": {"id": 190, "owner": {"id": 243}, "user": {"role": "worker"}}}, "resource": {"id": 385, "owner": {"id": 73}, "assignee": {"id": 542}, "organization": {"id": 657}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 32, "privilege": "none"}, "organization": {"id": 116, "owner": {"id": 294}, "user": {"role": "worker"}}}, "resource": {"id": 304, "owner": {"id": 32}, "assignee": {"id": 572}, "organization": {"id": 116}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 86, "privilege": "none"}, "organization": {"id": 114, "owner": {"id": 256}, "user": {"role": null}}}, "resource": {"id": 398, "owner": {"id": 86}, "assignee": {"id": 501}, "organization": {"id": 635}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 98, "privilege": "none"}, "organization": {"id": 176, "owner": {"id": 259}, "user": {"role": null}}}, "resource": {"id": 323, "owner": {"id": 98}, "assignee": {"id": 522}, "organization": {"id": 176}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_OWNER_resource_same_org_FALSE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 0, "privilege": "admin"}, "organization": {"id": 150, "owner": {"id": 0}, "user": {"role": "owner"}}}, "resource": {"id": 340, "owner": {"id": 486}, "assignee": {"id": 0}, "organization": {"id": 621}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 39, "privilege": "admin"}, "organization": {"id": 154, "owner": {"id": 39}, "user": {"role": "owner"}}}, "resource": {"id": 385, "owner": {"id": 476}, "assignee": {"id": 39}, "organization": {"id": 154}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_MAINTAINER_resource_same_org_FALSE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 29, "privilege": "admin"}, "organization": {"id": 142, "owner": {"id": 274}, "user": {"role": "maintainer"}}}, "resource": {"id": 334, "owner": {"id": 460}, "assignee": {"id": 29}, "organization": {"id": 624}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 25, "privilege": "admin"}, "organization": {"id": 153, "owner": {"id": 230}, "user": {"role": "maintainer"}}}, "resource": {"id": 306, "owner": {"id": 465}, "assignee": {"id": 25}, "organization": {"id": 153}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_SUPERVISOR_resource_same_org_FALSE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 96, "privilege": "admin"}, "organization": {"id": 138, "owner": {"id": 285}, "user": {"role": "supervisor"}}}, "resource": {"id": 304, "owner": {"id": 407}, "assignee": {"id": 96}, "organization": {"id": 696}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 99, "privilege": "admin"}, "organization": {"id": 170, "owner": {"id": 207}, "user": {"role": "supervisor"}}}, "resource": {"id": 375, "owner": {"id": 468}, "assignee": {"id": 99}, "organization": {"id": 170}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_WORKER_resource_same_org_FALSE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 9, "privilege": "admin"}, "organization": {"id": 142, "owner": {"id": 232}, "user": {"role": "worker"}}}, "resource": {"id": 367, "owner": {"id": 405}, "assignee": {"id": 9}, "organization": {"id": 605}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 35, "privilege": "admin"}, "organization": {"id": 130, "owner": {"id": 291}, "user": {"role": "worker"}}}, "resource": {"id": 347, "owner": {"id": 490}, "assignee": {"id": 35}, "organization": {"id": 130}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_NONE_resource_same_org_FALSE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 41, "privilege": "admin"}, "organization": {"id": 143, "owner": {"id": 292}, "user": {"role": null}}}, "resource": {"id": 342, "owner": {"id": 489}, "assignee": {"id": 41}, "organization": {"id": 656}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 1, "privilege": "admin"}, "organization": {"id": 160, "owner": {"id": 255}, "user": {"role": null}}}, "resource": {"id": 308, "owner": {"id": 471}, "assignee": {"id": 1}, "organization": {"id": 160}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 77, "privilege": "business"}, "organization": {"id": 196, "owner": {"id": 77}, "user": {"role": "owner"}}}, "resource": {"id": 334, "owner": {"id": 462}, "assignee": {"id": 77}, "organization": {"id": 660}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 51, "privilege": "business"}, "organization": {"id": 144, "owner": {"id": 51}, "user": {"role": "owner"}}}, "resource": {"id": 371, "owner": {"id": 432}, "assignee": {"id": 51}, "organization": {"id": 144}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 29, "privilege": "business"}, "organization": {"id": 124, "owner": {"id": 265}, "user": {"role": "maintainer"}}}, "resource": {"id": 346, "owner": {"id": 416}, "assignee": {"id": 29}, "organization": {"id": 616}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 67, "privilege": "business"}, "organization": {"id": 172, "owner": {"id": 254}, "user": {"role": "maintainer"}}}, "resource": {"id": 329, "owner": {"id": 440}, "assignee": {"id": 67}, "organization": {"id": 172}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 79, "privilege": "business"}, "organization": {"id": 154, "owner": {"id": 254}, "user": {"role": "supervisor"}}}, "resource": {"id": 317, "owner": {"id": 466}, "assignee": {"id": 79}, "organization": {"id": 655}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 69, "privilege": "business"}, "organization": {"id": 111, "owner": {"id": 290}, "user": {"role": "supervisor"}}}, "resource": {"id": 341, "owner": {"id": 465}, "assignee": {"id": 69}, "organization": {"id": 111}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 69, "privilege": "business"}, "organization": {"id": 172, "owner": {"id": 285}, "user": {"role": "worker"}}}, "resource": {"id": 334, "owner": {"id": 454}, "assignee": {"id": 69}, "organization": {"id": 647}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 75, "privilege": "business"}, "organization": {"id": 178, "owner": {"id": 241}, "user": {"role": "worker"}}}, "resource": {"id": 337, "owner": {"id": 429}, "assignee": {"id": 75}, "organization": {"id": 178}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 95, "privilege": "business"}, "organization": {"id": 170, "owner": {"id": 289}, "user": {"role": null}}}, "resource": {"id": 398, "owner": {"id": 471}, "assignee": {"id": 95}, "organization": {"id": 644}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 23, "privilege": "business"}, "organization": {"id": 150, "owner": {"id": 219}, "user": {"role": null}}}, "resource": {"id": 329, "owner": {"id": 484}, "assignee": {"id": 23}, "organization": {"id": 150}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 11, "privilege": "user"}, "organization": {"id": 168, "owner": {"id": 11}, "user": {"role": "owner"}}}, "resource": {"id": 343, "owner": {"id": 470}, "assignee": {"id": 11}, "organization": {"id": 628}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 94, "privilege": "user"}, "organization": {"id": 167, "owner": {"id": 94}, "user": {"role": "owner"}}}, "resource": {"id": 335, "owner": {"id": 490}, "assignee": {"id": 94}, "organization": {"id": 167}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 34, "privilege": "user"}, "organization": {"id": 176, "owner": {"id": 220}, "user": {"role": "maintainer"}}}, "resource": {"id": 335, "owner": {"id": 428}, "assignee": {"id": 34}, "organization": {"id": 682}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 88, "privilege": "user"}, "organization": {"id": 156, "owner": {"id": 297}, "user": {"role": "maintainer"}}}, "resource": {"id": 355, "owner": {"id": 489}, "assignee": {"id": 88}, "organization": {"id": 156}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 52, "privilege": "user"}, "organization": {"id": 117, "owner": {"id": 232}, "user": {"role": "supervisor"}}}, "resource": {"id": 314, "owner": {"id": 413}, "assignee": {"id": 52}, "organization": {"id": 665}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 17, "privilege": "user"}, "organization": {"id": 114, "owner": {"id": 276}, "user": {"role": "supervisor"}}}, "resource": {"id": 323, "owner": {"id": 401}, "assignee": {"id": 17}, "organization": {"id": 114}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 60, "privilege": "user"}, "organization": {"id": 120, "owner": {"id": 238}, "user": {"role": "worker"}}}, "resource": {"id": 399, "owner": {"id": 422}, "assignee": {"id": 60}, "organization": {"id": 606}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 9, "privilege": "user"}, "organization": {"id": 113, "owner": {"id": 243}, "user": {"role": "worker"}}}, "resource": {"id": 333, "owner": {"id": 476}, "assignee": {"id": 9}, "organization": {"id": 113}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 94, "privilege": "user"}, "organization": {"id": 184, "owner": {"id": 275}, "user": {"role": null}}}, "resource": {"id": 320, "owner": {"id": 419}, "assignee": {"id": 94}, "organization": {"id": 658}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 33, "privilege": "user"}, "organization": {"id": 190, "owner": {"id": 264}, "user": {"role": null}}}, "resource": {"id": 380, "owner": {"id": 458}, "assignee": {"id": 33}, "organization": {"id": 190}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 37, "privilege": "worker"}, "organization": {"id": 153, "owner": {"id": 37}, "user": {"role": "owner"}}}, "resource": {"id": 317, "owner": {"id": 437}, "assignee": {"id": 37}, "organization": {"id": 654}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 43, "privilege": "worker"}, "organization": {"id": 137, "owner": {"id": 43}, "user": {"role": "owner"}}}, "resource": {"id": 366, "owner": {"id": 414}, "assignee": {"id": 43}, "organization": {"id": 137}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 81, "privilege": "worker"}, "organization": {"id": 166, "owner": {"id": 250}, "user": {"role": "maintainer"}}}, "resource": {"id": 396, "owner": {"id": 403}, "assignee": {"id": 81}, "organization": {"id": 696}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 56, "privilege": "worker"}, "organization": {"id": 101, "owner": {"id": 231}, "user": {"role": "maintainer"}}}, "resource": {"id": 351, "owner": {"id": 469}, "assignee": {"id": 56}, "organization": {"id": 101}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 22, "privilege": "worker"}, "organization": {"id": 126, "owner": {"id": 292}, "user": {"role": "supervisor"}}}, "resource": {"id": 381, "owner": {"id": 468}, "assignee": {"id": 22}, "organization": {"id": 680}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 41, "privilege": "worker"}, "organization": {"id": 169, "owner": {"id": 228}, "user": {"role": "supervisor"}}}, "resource": {"id": 386, "owner": {"id": 471}, "assignee": {"id": 41}, "organization": {"id": 169}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 60, "privilege": "worker"}, "organization": {"id": 103, "owner": {"id": 254}, "user": {"role": "worker"}}}, "resource": {"id": 375, "owner": {"id": 465}, "assignee": {"id": 60}, "organization": {"id": 655}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 13, "privilege": "worker"}, "organization": {"id": 157, "owner": {"id": 255}, "user": {"role": "worker"}}}, "resource": {"id": 333, "owner": {"id": 494}, "assignee": {"id": 13}, "organization": {"id": 157}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 6, "privilege": "worker"}, "organization": {"id": 155, "owner": {"id": 297}, "user": {"role": null}}}, "resource": {"id": 321, "owner": {"id": 460}, "assignee": {"id": 6}, "organization": {"id": 677}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 27, "privilege": "worker"}, "organization": {"id": 147, "owner": {"id": 277}, "user": {"role": null}}}, "resource": {"id": 362, "owner": {"id": 473}, "assignee": {"id": 27}, "organization": {"id": 147}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 39, "privilege": "none"}, "organization": {"id": 110, "owner": {"id": 39}, "user": {"role": "owner"}}}, "resource": {"id": 321, "owner": {"id": 404}, "assignee": {"id": 39}, "organization": {"id": 656}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 65, "privilege": "none"}, "organization": {"id": 174, "owner": {"id": 65}, "user": {"role": "owner"}}}, "resource": {"id": 364, "owner": {"id": 472}, "assignee": {"id": 65}, "organization": {"id": 174}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 74, "privilege": "none"}, "organization": {"id": 176, "owner": {"id": 235}, "user": {"role": "maintainer"}}}, "resource": {"id": 375, "owner": {"id": 451}, "assignee": {"id": 74}, "organization": {"id": 658}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 36, "privilege": "none"}, "organization": {"id": 184, "owner": {"id": 241}, "user": {"role": "maintainer"}}}, "resource": {"id": 357, "owner": {"id": 497}, "assignee": {"id": 36}, "organization": {"id": 184}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 10, "privilege": "none"}, "organization": {"id": 143, "owner": {"id": 230}, "user": {"role": "supervisor"}}}, "resource": {"id": 369, "owner": {"id": 414}, "assignee": {"id": 10}, "organization": {"id": 630}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 18, "privilege": "none"}, "organization": {"id": 168, "owner": {"id": 283}, "user": {"role": "supervisor"}}}, "resource": {"id": 305, "owner": {"id": 423}, "assignee": {"id": 18}, "organization": {"id": 168}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 69, "privilege": "none"}, "organization": {"id": 121, "owner": {"id": 219}, "user": {"role": "worker"}}}, "resource": {"id": 389, "owner": {"id": 487}, "assignee": {"id": 69}, "organization": {"id": 634}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 2, "privilege": "none"}, "organization": {"id": 134, "owner": {"id": 206}, "user": {"role": "worker"}}}, "resource": {"id": 355, "owner": {"id": 453}, "assignee": {"id": 2}, "organization": {"id": 134}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 79, "privilege": "none"}, "organization": {"id": 117, "owner": {"id": 203}, "user": {"role": null}}}, "resource": {"id": 399, "owner": {"id": 457}, "assignee": {"id": 79}, "organization": {"id": 665}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 29, "privilege": "none"}, "organization": {"id": 147, "owner": {"id": 287}, "user": {"role": null}}}, "resource": {"id": 380, "owner": {"id": 498}, "assignee": {"id": 29}, "organization": {"id": 147}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_OWNER_resource_same_org_FALSE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 76, "privilege": "admin"}, "organization": {"id": 167, "owner": {"id": 76}, "user": {"role": "owner"}}}, "resource": {"id": 368, "owner": {"id": 442}, "assignee": {"id": 518}, "organization": {"id": 619}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 89, "privilege": "admin"}, "organization": {"id": 104, "owner": {"id": 89}, "user": {"role": "owner"}}}, "resource": {"id": 344, "owner": {"id": 483}, "assignee": {"id": 525}, "organization": {"id": 104}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_MAINTAINER_resource_same_org_FALSE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 17, "privilege": "admin"}, "organization": {"id": 160, "owner": {"id": 298}, "user": {"role": "maintainer"}}}, "resource": {"id": 330, "owner": {"id": 450}, "assignee": {"id": 564}, "organization": {"id": 611}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 17, "privilege": "admin"}, "organization": {"id": 108, "owner": {"id": 257}, "user": {"role": "maintainer"}}}, "resource": {"id": 308, "owner": {"id": 447}, "assignee": {"id": 554}, "organization": {"id": 108}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_SUPERVISOR_resource_same_org_FALSE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 23, "privilege": "admin"}, "organization": {"id": 160, "owner": {"id": 288}, "user": {"role": "supervisor"}}}, "resource": {"id": 348, "owner": {"id": 497}, "assignee": {"id": 509}, "organization": {"id": 633}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 50, "privilege": "admin"}, "organization": {"id": 168, "owner": {"id": 232}, "user": {"role": "supervisor"}}}, "resource": {"id": 354, "owner": {"id": 488}, "assignee": {"id": 545}, "organization": {"id": 168}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_WORKER_resource_same_org_FALSE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 93, "privilege": "admin"}, "organization": {"id": 108, "owner": {"id": 291}, "user": {"role": "worker"}}}, "resource": {"id": 306, "owner": {"id": 432}, "assignee": {"id": 561}, "organization": {"id": 601}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 18, "privilege": "admin"}, "organization": {"id": 139, "owner": {"id": 204}, "user": {"role": "worker"}}}, "resource": {"id": 324, "owner": {"id": 407}, "assignee": {"id": 526}, "organization": {"id": 139}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_NONE_resource_same_org_FALSE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 70, "privilege": "admin"}, "organization": {"id": 142, "owner": {"id": 265}, "user": {"role": null}}}, "resource": {"id": 325, "owner": {"id": 430}, "assignee": {"id": 552}, "organization": {"id": 690}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 97, "privilege": "admin"}, "organization": {"id": 189, "owner": {"id": 239}, "user": {"role": null}}}, "resource": {"id": 312, "owner": {"id": 421}, "assignee": {"id": 562}, "organization": {"id": 189}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 83, "privilege": "business"}, "organization": {"id": 119, "owner": {"id": 83}, "user": {"role": "owner"}}}, "resource": {"id": 326, "owner": {"id": 417}, "assignee": {"id": 535}, "organization": {"id": 630}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 31, "privilege": "business"}, "organization": {"id": 100, "owner": {"id": 31}, "user": {"role": "owner"}}}, "resource": {"id": 392, "owner": {"id": 408}, "assignee": {"id": 530}, "organization": {"id": 100}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 51, "privilege": "business"}, "organization": {"id": 106, "owner": {"id": 260}, "user": {"role": "maintainer"}}}, "resource": {"id": 354, "owner": {"id": 471}, "assignee": {"id": 555}, "organization": {"id": 653}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 70, "privilege": "business"}, "organization": {"id": 143, "owner": {"id": 255}, "user": {"role": "maintainer"}}}, "resource": {"id": 396, "owner": {"id": 407}, "assignee": {"id": 582}, "organization": {"id": 143}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 48, "privilege": "business"}, "organization": {"id": 137, "owner": {"id": 251}, "user": {"role": "supervisor"}}}, "resource": {"id": 361, "owner": {"id": 442}, "assignee": {"id": 597}, "organization": {"id": 627}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 19, "privilege": "business"}, "organization": {"id": 153, "owner": {"id": 267}, "user": {"role": "supervisor"}}}, "resource": {"id": 305, "owner": {"id": 453}, "assignee": {"id": 513}, "organization": {"id": 153}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 51, "privilege": "business"}, "organization": {"id": 129, "owner": {"id": 234}, "user": {"role": "worker"}}}, "resource": {"id": 341, "owner": {"id": 477}, "assignee": {"id": 522}, "organization": {"id": 620}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_WORKER_resource_same_org_TRUE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 9, "privilege": "business"}, "organization": {"id": 116, "owner": {"id": 204}, "user": {"role": "worker"}}}, "resource": {"id": 310, "owner": {"id": 474}, "assignee": {"id": 557}, "organization": {"id": 116}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 34, "privilege": "business"}, "organization": {"id": 160, "owner": {"id": 209}, "user": {"role": null}}}, "resource": {"id": 333, "owner": {"id": 409}, "assignee": {"id": 591}, "organization": {"id": 684}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 26, "privilege": "business"}, "organization": {"id": 164, "owner": {"id": 252}, "user": {"role": null}}}, "resource": {"id": 331, "owner": {"id": 485}, "assignee": {"id": 576}, "organization": {"id": 164}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 35, "privilege": "user"}, "organization": {"id": 101, "owner": {"id": 35}, "user": {"role": "owner"}}}, "resource": {"id": 383, "owner": {"id": 478}, "assignee": {"id": 584}, "organization": {"id": 690}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 2, "privilege": "user"}, "organization": {"id": 180, "owner": {"id": 2}, "user": {"role": "owner"}}}, "resource": {"id": 379, "owner": {"id": 469}, "assignee": {"id": 515}, "organization": {"id": 180}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 89, "privilege": "user"}, "organization": {"id": 174, "owner": {"id": 273}, "user": {"role": "maintainer"}}}, "resource": {"id": 316, "owner": {"id": 422}, "assignee": {"id": 503}, "organization": {"id": 628}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 82, "privilege": "user"}, "organization": {"id": 187, "owner": {"id": 211}, "user": {"role": "maintainer"}}}, "resource": {"id": 324, "owner": {"id": 459}, "assignee": {"id": 573}, "organization": {"id": 187}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 27, "privilege": "user"}, "organization": {"id": 113, "owner": {"id": 289}, "user": {"role": "supervisor"}}}, "resource": {"id": 345, "owner": {"id": 467}, "assignee": {"id": 587}, "organization": {"id": 660}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 6, "privilege": "user"}, "organization": {"id": 179, "owner": {"id": 231}, "user": {"role": "supervisor"}}}, "resource": {"id": 326, "owner": {"id": 475}, "assignee": {"id": 585}, "organization": {"id": 179}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 48, "privilege": "user"}, "organization": {"id": 189, "owner": {"id": 270}, "user": {"role": "worker"}}}, "resource": {"id": 398, "owner": {"id": 408}, "assignee": {"id": 521}, "organization": {"id": 669}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_WORKER_resource_same_org_TRUE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 4, "privilege": "user"}, "organization": {"id": 197, "owner": {"id": 274}, "user": {"role": "worker"}}}, "resource": {"id": 395, "owner": {"id": 404}, "assignee": {"id": 539}, "organization": {"id": 197}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 73, "privilege": "user"}, "organization": {"id": 141, "owner": {"id": 243}, "user": {"role": null}}}, "resource": {"id": 344, "owner": {"id": 443}, "assignee": {"id": 532}, "organization": {"id": 663}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 22, "privilege": "user"}, "organization": {"id": 123, "owner": {"id": 237}, "user": {"role": null}}}, "resource": {"id": 374, "owner": {"id": 459}, "assignee": {"id": 598}, "organization": {"id": 123}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 55, "privilege": "worker"}, "organization": {"id": 143, "owner": {"id": 55}, "user": {"role": "owner"}}}, "resource": {"id": 399, "owner": {"id": 469}, "assignee": {"id": 569}, "organization": {"id": 664}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 21, "privilege": "worker"}, "organization": {"id": 157, "owner": {"id": 21}, "user": {"role": "owner"}}}, "resource": {"id": 322, "owner": {"id": 494}, "assignee": {"id": 540}, "organization": {"id": 157}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 38, "privilege": "worker"}, "organization": {"id": 126, "owner": {"id": 247}, "user": {"role": "maintainer"}}}, "resource": {"id": 397, "owner": {"id": 458}, "assignee": {"id": 508}, "organization": {"id": 694}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 42, "privilege": "worker"}, "organization": {"id": 189, "owner": {"id": 211}, "user": {"role": "maintainer"}}}, "resource": {"id": 345, "owner": {"id": 456}, "assignee": {"id": 566}, "organization": {"id": 189}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 10, "privilege": "worker"}, "organization": {"id": 112, "owner": {"id": 298}, "user": {"role": "supervisor"}}}, "resource": {"id": 326, "owner": {"id": 415}, "assignee": {"id": 514}, "organization": {"id": 625}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 32, "privilege": "worker"}, "organization": {"id": 175, "owner": {"id": 224}, "user": {"role": "supervisor"}}}, "resource": {"id": 304, "owner": {"id": 450}, "assignee": {"id": 525}, "organization": {"id": 175}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 34, "privilege": "worker"}, "organization": {"id": 145, "owner": {"id": 265}, "user": {"role": "worker"}}}, "resource": {"id": 322, "owner": {"id": 468}, "assignee": {"id": 557}, "organization": {"id": 675}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_WORKER_resource_same_org_TRUE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 98, "privilege": "worker"}, "organization": {"id": 183, "owner": {"id": 264}, "user": {"role": "worker"}}}, "resource": {"id": 365, "owner": {"id": 408}, "assignee": {"id": 517}, "organization": {"id": 183}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 1, "privilege": "worker"}, "organization": {"id": 139, "owner": {"id": 270}, "user": {"role": null}}}, "resource": {"id": 329, "owner": {"id": 469}, "assignee": {"id": 527}, "organization": {"id": 680}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 3, "privilege": "worker"}, "organization": {"id": 118, "owner": {"id": 281}, "user": {"role": null}}}, "resource": {"id": 325, "owner": {"id": 489}, "assignee": {"id": 515}, "organization": {"id": 118}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 30, "privilege": "none"}, "organization": {"id": 111, "owner": {"id": 30}, "user": {"role": "owner"}}}, "resource": {"id": 398, "owner": {"id": 496}, "assignee": {"id": 540}, "organization": {"id": 625}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_OWNER_resource_same_org_TRUE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 99, "privilege": "none"}, "organization": {"id": 129, "owner": {"id": 99}, "user": {"role": "owner"}}}, "resource": {"id": 391, "owner": {"id": 422}, "assignee": {"id": 553}, "organization": {"id": 129}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 73, "privilege": "none"}, "organization": {"id": 153, "owner": {"id": 286}, "user": {"role": "maintainer"}}}, "resource": {"id": 312, "owner": {"id": 466}, "assignee": {"id": 569}, "organization": {"id": 600}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_MAINTAINER_resource_same_org_TRUE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 12, "privilege": "none"}, "organization": {"id": 160, "owner": {"id": 295}, "user": {"role": "maintainer"}}}, "resource": {"id": 397, "owner": {"id": 493}, "assignee": {"id": 508}, "organization": {"id": 160}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 13, "privilege": "none"}, "organization": {"id": 180, "owner": {"id": 290}, "user": {"role": "supervisor"}}}, "resource": {"id": 393, "owner": {"id": 442}, "assignee": {"id": 505}, "organization": {"id": 677}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_SUPERVISOR_resource_same_org_TRUE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 91, "privilege": "none"}, "organization": {"id": 164, "owner": {"id": 205}, "user": {"role": "supervisor"}}}, "resource": {"id": 343, "owner": {"id": 424}, "assignee": {"id": 536}, "organization": {"id": 164}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 15, "privilege": "none"}, "organization": {"id": 177, "owner": {"id": 260}, "user": {"role": "worker"}}}, "resource": {"id": 318, "owner": {"id": 405}, "assignee": {"id": 513}, "organization": {"id": 673}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_WORKER_resource_same_org_TRUE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 92, "privilege": "none"}, "organization": {"id": 120, "owner": {"id": 236}, "user": {"role": "worker"}}}, "resource": {"id": 386, "owner": {"id": 495}, "assignee": {"id": 548}, "organization": {"id": 120}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 68, "privilege": "none"}, "organization": {"id": 145, "owner": {"id": 245}, "user": {"role": null}}}, "resource": {"id": 353, "owner": {"id": 455}, "assignee": {"id": 560}, "organization": {"id": 613}}}
}

test_scope_EXPORT_DATASET_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "export:dataset", "auth": {"user": {"id": 79, "privilege": "none"}, "organization": {"id": 142, "owner": {"id": 247}, "user": {"role": null}}}, "resource": {"id": 317, "owner": {"id": 478}, "assignee": {"id": 582}, "organization": {"id": 142}}}
}

test_scope_EXPORT_ANNOTATIONS_context_SANDBOX_ownership_OWNER_privilege_ADMIN_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 11, "privilege": "admin"}, "organization": null}, "resource": {"id": 360, "owner": {"id": 11}, "assignee": {"id": 570}, "organization": {"id": 689}}}
}

test_scope_EXPORT_ANNOTATIONS_context_SANDBOX_ownership_OWNER_privilege_BUSINESS_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 32, "privilege": "business"}, "organization": null}, "resource": {"id": 333, "owner": {"id": 32}, "assignee": {"id": 520}, "organization": {"id": 687}}}
}

test_scope_EXPORT_ANNOTATIONS_context_SANDBOX_ownership_OWNER_privilege_USER_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 80, "privilege": "user"}, "organization": null}, "resource": {"id": 389, "owner": {"id": 80}, "assignee": {"id": 576}, "organization": {"id": 697}}}
}

test_scope_EXPORT_ANNOTATIONS_context_SANDBOX_ownership_OWNER_privilege_WORKER_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 81, "privilege": "worker"}, "organization": null}, "resource": {"id": 394, "owner": {"id": 81}, "assignee": {"id": 547}, "organization": {"id": 603}}}
}

test_scope_EXPORT_ANNOTATIONS_context_SANDBOX_ownership_OWNER_privilege_NONE_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 70, "privilege": "none"}, "organization": null}, "resource": {"id": 332, "owner": {"id": 70}, "assignee": {"id": 547}, "organization": {"id": 621}}}
}

test_scope_EXPORT_ANNOTATIONS_context_SANDBOX_ownership_ASSIGNEE_privilege_ADMIN_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 92, "privilege": "admin"}, "organization": null}, "resource": {"id": 332, "owner": {"id": 473}, "assignee": {"id": 92}, "organization": {"id": 610}}}
}

test_scope_EXPORT_ANNOTATIONS_context_SANDBOX_ownership_ASSIGNEE_privilege_BUSINESS_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 33, "privilege": "business"}, "organization": null}, "resource": {"id": 367, "owner": {"id": 465}, "assignee": {"id": 33}, "organization": {"id": 672}}}
}

test_scope_EXPORT_ANNOTATIONS_context_SANDBOX_ownership_ASSIGNEE_privilege_USER_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 98, "privilege": "user"}, "organization": null}, "resource": {"id": 397, "owner": {"id": 415}, "assignee": {"id": 98}, "organization": {"id": 668}}}
}

test_scope_EXPORT_ANNOTATIONS_context_SANDBOX_ownership_ASSIGNEE_privilege_WORKER_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 95, "privilege": "worker"}, "organization": null}, "resource": {"id": 309, "owner": {"id": 468}, "assignee": {"id": 95}, "organization": {"id": 614}}}
}

test_scope_EXPORT_ANNOTATIONS_context_SANDBOX_ownership_ASSIGNEE_privilege_NONE_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 19, "privilege": "none"}, "organization": null}, "resource": {"id": 352, "owner": {"id": 496}, "assignee": {"id": 19}, "organization": {"id": 639}}}
}

test_scope_EXPORT_ANNOTATIONS_context_SANDBOX_ownership_NONE_privilege_ADMIN_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 23, "privilege": "admin"}, "organization": null}, "resource": {"id": 322, "owner": {"id": 433}, "assignee": {"id": 582}, "organization": {"id": 608}}}
}

test_scope_EXPORT_ANNOTATIONS_context_SANDBOX_ownership_NONE_privilege_BUSINESS_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 15, "privilege": "business"}, "organization": null}, "resource": {"id": 392, "owner": {"id": 484}, "assignee": {"id": 589}, "organization": {"id": 650}}}
}

test_scope_EXPORT_ANNOTATIONS_context_SANDBOX_ownership_NONE_privilege_USER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 74, "privilege": "user"}, "organization": null}, "resource": {"id": 313, "owner": {"id": 447}, "assignee": {"id": 567}, "organization": {"id": 615}}}
}

test_scope_EXPORT_ANNOTATIONS_context_SANDBOX_ownership_NONE_privilege_WORKER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 87, "privilege": "worker"}, "organization": null}, "resource": {"id": 360, "owner": {"id": 496}, "assignee": {"id": 512}, "organization": {"id": 635}}}
}

test_scope_EXPORT_ANNOTATIONS_context_SANDBOX_ownership_NONE_privilege_NONE_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 53, "privilege": "none"}, "organization": null}, "resource": {"id": 340, "owner": {"id": 415}, "assignee": {"id": 591}, "organization": {"id": 695}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_OWNER_resource_same_org_FALSE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 0, "privilege": "admin"}, "organization": {"id": 189, "owner": {"id": 0}, "user": {"role": "owner"}}}, "resource": {"id": 321, "owner": {"id": 0}, "assignee": {"id": 533}, "organization": {"id": 694}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 38, "privilege": "admin"}, "organization": {"id": 188, "owner": {"id": 38}, "user": {"role": "owner"}}}, "resource": {"id": 353, "owner": {"id": 38}, "assignee": {"id": 517}, "organization": {"id": 188}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_MAINTAINER_resource_same_org_FALSE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 7, "privilege": "admin"}, "organization": {"id": 117, "owner": {"id": 232}, "user": {"role": "maintainer"}}}, "resource": {"id": 321, "owner": {"id": 7}, "assignee": {"id": 599}, "organization": {"id": 623}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 71, "privilege": "admin"}, "organization": {"id": 177, "owner": {"id": 212}, "user": {"role": "maintainer"}}}, "resource": {"id": 348, "owner": {"id": 71}, "assignee": {"id": 509}, "organization": {"id": 177}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_SUPERVISOR_resource_same_org_FALSE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 12, "privilege": "admin"}, "organization": {"id": 162, "owner": {"id": 212}, "user": {"role": "supervisor"}}}, "resource": {"id": 378, "owner": {"id": 12}, "assignee": {"id": 550}, "organization": {"id": 610}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 93, "privilege": "admin"}, "organization": {"id": 179, "owner": {"id": 273}, "user": {"role": "supervisor"}}}, "resource": {"id": 320, "owner": {"id": 93}, "assignee": {"id": 501}, "organization": {"id": 179}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_WORKER_resource_same_org_FALSE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 29, "privilege": "admin"}, "organization": {"id": 154, "owner": {"id": 284}, "user": {"role": "worker"}}}, "resource": {"id": 326, "owner": {"id": 29}, "assignee": {"id": 543}, "organization": {"id": 622}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 58, "privilege": "admin"}, "organization": {"id": 148, "owner": {"id": 233}, "user": {"role": "worker"}}}, "resource": {"id": 332, "owner": {"id": 58}, "assignee": {"id": 534}, "organization": {"id": 148}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_NONE_resource_same_org_FALSE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 12, "privilege": "admin"}, "organization": {"id": 169, "owner": {"id": 256}, "user": {"role": null}}}, "resource": {"id": 387, "owner": {"id": 12}, "assignee": {"id": 532}, "organization": {"id": 682}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 57, "privilege": "admin"}, "organization": {"id": 143, "owner": {"id": 221}, "user": {"role": null}}}, "resource": {"id": 328, "owner": {"id": 57}, "assignee": {"id": 518}, "organization": {"id": 143}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 30, "privilege": "business"}, "organization": {"id": 107, "owner": {"id": 30}, "user": {"role": "owner"}}}, "resource": {"id": 333, "owner": {"id": 30}, "assignee": {"id": 507}, "organization": {"id": 603}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 69, "privilege": "business"}, "organization": {"id": 184, "owner": {"id": 69}, "user": {"role": "owner"}}}, "resource": {"id": 398, "owner": {"id": 69}, "assignee": {"id": 560}, "organization": {"id": 184}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 61, "privilege": "business"}, "organization": {"id": 121, "owner": {"id": 247}, "user": {"role": "maintainer"}}}, "resource": {"id": 397, "owner": {"id": 61}, "assignee": {"id": 596}, "organization": {"id": 688}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 83, "privilege": "business"}, "organization": {"id": 180, "owner": {"id": 232}, "user": {"role": "maintainer"}}}, "resource": {"id": 304, "owner": {"id": 83}, "assignee": {"id": 595}, "organization": {"id": 180}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 16, "privilege": "business"}, "organization": {"id": 177, "owner": {"id": 239}, "user": {"role": "supervisor"}}}, "resource": {"id": 306, "owner": {"id": 16}, "assignee": {"id": 578}, "organization": {"id": 636}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 92, "privilege": "business"}, "organization": {"id": 170, "owner": {"id": 298}, "user": {"role": "supervisor"}}}, "resource": {"id": 350, "owner": {"id": 92}, "assignee": {"id": 539}, "organization": {"id": 170}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 37, "privilege": "business"}, "organization": {"id": 190, "owner": {"id": 277}, "user": {"role": "worker"}}}, "resource": {"id": 353, "owner": {"id": 37}, "assignee": {"id": 548}, "organization": {"id": 637}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 26, "privilege": "business"}, "organization": {"id": 123, "owner": {"id": 212}, "user": {"role": "worker"}}}, "resource": {"id": 382, "owner": {"id": 26}, "assignee": {"id": 576}, "organization": {"id": 123}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 25, "privilege": "business"}, "organization": {"id": 182, "owner": {"id": 288}, "user": {"role": null}}}, "resource": {"id": 350, "owner": {"id": 25}, "assignee": {"id": 557}, "organization": {"id": 698}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 11, "privilege": "business"}, "organization": {"id": 150, "owner": {"id": 289}, "user": {"role": null}}}, "resource": {"id": 318, "owner": {"id": 11}, "assignee": {"id": 536}, "organization": {"id": 150}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 86, "privilege": "user"}, "organization": {"id": 170, "owner": {"id": 86}, "user": {"role": "owner"}}}, "resource": {"id": 323, "owner": {"id": 86}, "assignee": {"id": 511}, "organization": {"id": 690}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 54, "privilege": "user"}, "organization": {"id": 195, "owner": {"id": 54}, "user": {"role": "owner"}}}, "resource": {"id": 342, "owner": {"id": 54}, "assignee": {"id": 587}, "organization": {"id": 195}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 42, "privilege": "user"}, "organization": {"id": 134, "owner": {"id": 229}, "user": {"role": "maintainer"}}}, "resource": {"id": 373, "owner": {"id": 42}, "assignee": {"id": 595}, "organization": {"id": 647}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 91, "privilege": "user"}, "organization": {"id": 176, "owner": {"id": 249}, "user": {"role": "maintainer"}}}, "resource": {"id": 388, "owner": {"id": 91}, "assignee": {"id": 570}, "organization": {"id": 176}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 41, "privilege": "user"}, "organization": {"id": 171, "owner": {"id": 241}, "user": {"role": "supervisor"}}}, "resource": {"id": 318, "owner": {"id": 41}, "assignee": {"id": 549}, "organization": {"id": 683}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 27, "privilege": "user"}, "organization": {"id": 137, "owner": {"id": 240}, "user": {"role": "supervisor"}}}, "resource": {"id": 372, "owner": {"id": 27}, "assignee": {"id": 589}, "organization": {"id": 137}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 40, "privilege": "user"}, "organization": {"id": 118, "owner": {"id": 209}, "user": {"role": "worker"}}}, "resource": {"id": 373, "owner": {"id": 40}, "assignee": {"id": 554}, "organization": {"id": 679}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 93, "privilege": "user"}, "organization": {"id": 102, "owner": {"id": 208}, "user": {"role": "worker"}}}, "resource": {"id": 392, "owner": {"id": 93}, "assignee": {"id": 519}, "organization": {"id": 102}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 5, "privilege": "user"}, "organization": {"id": 100, "owner": {"id": 259}, "user": {"role": null}}}, "resource": {"id": 372, "owner": {"id": 5}, "assignee": {"id": 534}, "organization": {"id": 694}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 23, "privilege": "user"}, "organization": {"id": 131, "owner": {"id": 296}, "user": {"role": null}}}, "resource": {"id": 391, "owner": {"id": 23}, "assignee": {"id": 538}, "organization": {"id": 131}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 26, "privilege": "worker"}, "organization": {"id": 195, "owner": {"id": 26}, "user": {"role": "owner"}}}, "resource": {"id": 362, "owner": {"id": 26}, "assignee": {"id": 515}, "organization": {"id": 615}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 80, "privilege": "worker"}, "organization": {"id": 123, "owner": {"id": 80}, "user": {"role": "owner"}}}, "resource": {"id": 388, "owner": {"id": 80}, "assignee": {"id": 526}, "organization": {"id": 123}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 67, "privilege": "worker"}, "organization": {"id": 125, "owner": {"id": 249}, "user": {"role": "maintainer"}}}, "resource": {"id": 343, "owner": {"id": 67}, "assignee": {"id": 536}, "organization": {"id": 690}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 68, "privilege": "worker"}, "organization": {"id": 194, "owner": {"id": 238}, "user": {"role": "maintainer"}}}, "resource": {"id": 354, "owner": {"id": 68}, "assignee": {"id": 575}, "organization": {"id": 194}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 16, "privilege": "worker"}, "organization": {"id": 198, "owner": {"id": 297}, "user": {"role": "supervisor"}}}, "resource": {"id": 355, "owner": {"id": 16}, "assignee": {"id": 538}, "organization": {"id": 665}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 48, "privilege": "worker"}, "organization": {"id": 192, "owner": {"id": 235}, "user": {"role": "supervisor"}}}, "resource": {"id": 378, "owner": {"id": 48}, "assignee": {"id": 571}, "organization": {"id": 192}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 17, "privilege": "worker"}, "organization": {"id": 161, "owner": {"id": 202}, "user": {"role": "worker"}}}, "resource": {"id": 393, "owner": {"id": 17}, "assignee": {"id": 507}, "organization": {"id": 681}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 45, "privilege": "worker"}, "organization": {"id": 132, "owner": {"id": 206}, "user": {"role": "worker"}}}, "resource": {"id": 316, "owner": {"id": 45}, "assignee": {"id": 511}, "organization": {"id": 132}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 62, "privilege": "worker"}, "organization": {"id": 136, "owner": {"id": 237}, "user": {"role": null}}}, "resource": {"id": 396, "owner": {"id": 62}, "assignee": {"id": 586}, "organization": {"id": 677}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 99, "privilege": "worker"}, "organization": {"id": 181, "owner": {"id": 295}, "user": {"role": null}}}, "resource": {"id": 387, "owner": {"id": 99}, "assignee": {"id": 580}, "organization": {"id": 181}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 35, "privilege": "none"}, "organization": {"id": 154, "owner": {"id": 35}, "user": {"role": "owner"}}}, "resource": {"id": 327, "owner": {"id": 35}, "assignee": {"id": 543}, "organization": {"id": 662}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 2, "privilege": "none"}, "organization": {"id": 183, "owner": {"id": 2}, "user": {"role": "owner"}}}, "resource": {"id": 306, "owner": {"id": 2}, "assignee": {"id": 580}, "organization": {"id": 183}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 90, "privilege": "none"}, "organization": {"id": 180, "owner": {"id": 294}, "user": {"role": "maintainer"}}}, "resource": {"id": 323, "owner": {"id": 90}, "assignee": {"id": 512}, "organization": {"id": 648}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 97, "privilege": "none"}, "organization": {"id": 151, "owner": {"id": 252}, "user": {"role": "maintainer"}}}, "resource": {"id": 383, "owner": {"id": 97}, "assignee": {"id": 586}, "organization": {"id": 151}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 26, "privilege": "none"}, "organization": {"id": 108, "owner": {"id": 292}, "user": {"role": "supervisor"}}}, "resource": {"id": 379, "owner": {"id": 26}, "assignee": {"id": 539}, "organization": {"id": 659}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 91, "privilege": "none"}, "organization": {"id": 127, "owner": {"id": 223}, "user": {"role": "supervisor"}}}, "resource": {"id": 378, "owner": {"id": 91}, "assignee": {"id": 564}, "organization": {"id": 127}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 32, "privilege": "none"}, "organization": {"id": 151, "owner": {"id": 279}, "user": {"role": "worker"}}}, "resource": {"id": 346, "owner": {"id": 32}, "assignee": {"id": 504}, "organization": {"id": 632}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 38, "privilege": "none"}, "organization": {"id": 186, "owner": {"id": 220}, "user": {"role": "worker"}}}, "resource": {"id": 369, "owner": {"id": 38}, "assignee": {"id": 544}, "organization": {"id": 186}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 72, "privilege": "none"}, "organization": {"id": 131, "owner": {"id": 264}, "user": {"role": null}}}, "resource": {"id": 360, "owner": {"id": 72}, "assignee": {"id": 522}, "organization": {"id": 676}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 97, "privilege": "none"}, "organization": {"id": 137, "owner": {"id": 294}, "user": {"role": null}}}, "resource": {"id": 327, "owner": {"id": 97}, "assignee": {"id": 565}, "organization": {"id": 137}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_OWNER_resource_same_org_FALSE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 71, "privilege": "admin"}, "organization": {"id": 125, "owner": {"id": 71}, "user": {"role": "owner"}}}, "resource": {"id": 379, "owner": {"id": 421}, "assignee": {"id": 71}, "organization": {"id": 620}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 42, "privilege": "admin"}, "organization": {"id": 138, "owner": {"id": 42}, "user": {"role": "owner"}}}, "resource": {"id": 324, "owner": {"id": 400}, "assignee": {"id": 42}, "organization": {"id": 138}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_MAINTAINER_resource_same_org_FALSE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 50, "privilege": "admin"}, "organization": {"id": 178, "owner": {"id": 210}, "user": {"role": "maintainer"}}}, "resource": {"id": 316, "owner": {"id": 476}, "assignee": {"id": 50}, "organization": {"id": 606}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 97, "privilege": "admin"}, "organization": {"id": 154, "owner": {"id": 206}, "user": {"role": "maintainer"}}}, "resource": {"id": 353, "owner": {"id": 435}, "assignee": {"id": 97}, "organization": {"id": 154}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_SUPERVISOR_resource_same_org_FALSE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 71, "privilege": "admin"}, "organization": {"id": 104, "owner": {"id": 254}, "user": {"role": "supervisor"}}}, "resource": {"id": 345, "owner": {"id": 426}, "assignee": {"id": 71}, "organization": {"id": 673}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 96, "privilege": "admin"}, "organization": {"id": 111, "owner": {"id": 261}, "user": {"role": "supervisor"}}}, "resource": {"id": 390, "owner": {"id": 443}, "assignee": {"id": 96}, "organization": {"id": 111}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_WORKER_resource_same_org_FALSE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 68, "privilege": "admin"}, "organization": {"id": 149, "owner": {"id": 203}, "user": {"role": "worker"}}}, "resource": {"id": 371, "owner": {"id": 455}, "assignee": {"id": 68}, "organization": {"id": 638}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 11, "privilege": "admin"}, "organization": {"id": 186, "owner": {"id": 220}, "user": {"role": "worker"}}}, "resource": {"id": 341, "owner": {"id": 490}, "assignee": {"id": 11}, "organization": {"id": 186}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_NONE_resource_same_org_FALSE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 23, "privilege": "admin"}, "organization": {"id": 196, "owner": {"id": 279}, "user": {"role": null}}}, "resource": {"id": 326, "owner": {"id": 478}, "assignee": {"id": 23}, "organization": {"id": 678}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 56, "privilege": "admin"}, "organization": {"id": 171, "owner": {"id": 224}, "user": {"role": null}}}, "resource": {"id": 346, "owner": {"id": 469}, "assignee": {"id": 56}, "organization": {"id": 171}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 12, "privilege": "business"}, "organization": {"id": 138, "owner": {"id": 12}, "user": {"role": "owner"}}}, "resource": {"id": 356, "owner": {"id": 411}, "assignee": {"id": 12}, "organization": {"id": 695}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 26, "privilege": "business"}, "organization": {"id": 175, "owner": {"id": 26}, "user": {"role": "owner"}}}, "resource": {"id": 395, "owner": {"id": 473}, "assignee": {"id": 26}, "organization": {"id": 175}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 63, "privilege": "business"}, "organization": {"id": 193, "owner": {"id": 251}, "user": {"role": "maintainer"}}}, "resource": {"id": 363, "owner": {"id": 408}, "assignee": {"id": 63}, "organization": {"id": 644}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 39, "privilege": "business"}, "organization": {"id": 191, "owner": {"id": 296}, "user": {"role": "maintainer"}}}, "resource": {"id": 371, "owner": {"id": 456}, "assignee": {"id": 39}, "organization": {"id": 191}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 3, "privilege": "business"}, "organization": {"id": 151, "owner": {"id": 251}, "user": {"role": "supervisor"}}}, "resource": {"id": 368, "owner": {"id": 462}, "assignee": {"id": 3}, "organization": {"id": 600}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 4, "privilege": "business"}, "organization": {"id": 192, "owner": {"id": 255}, "user": {"role": "supervisor"}}}, "resource": {"id": 375, "owner": {"id": 406}, "assignee": {"id": 4}, "organization": {"id": 192}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 82, "privilege": "business"}, "organization": {"id": 109, "owner": {"id": 287}, "user": {"role": "worker"}}}, "resource": {"id": 360, "owner": {"id": 465}, "assignee": {"id": 82}, "organization": {"id": 623}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 16, "privilege": "business"}, "organization": {"id": 145, "owner": {"id": 297}, "user": {"role": "worker"}}}, "resource": {"id": 350, "owner": {"id": 486}, "assignee": {"id": 16}, "organization": {"id": 145}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 4, "privilege": "business"}, "organization": {"id": 185, "owner": {"id": 296}, "user": {"role": null}}}, "resource": {"id": 325, "owner": {"id": 406}, "assignee": {"id": 4}, "organization": {"id": 601}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 61, "privilege": "business"}, "organization": {"id": 113, "owner": {"id": 236}, "user": {"role": null}}}, "resource": {"id": 319, "owner": {"id": 438}, "assignee": {"id": 61}, "organization": {"id": 113}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 76, "privilege": "user"}, "organization": {"id": 114, "owner": {"id": 76}, "user": {"role": "owner"}}}, "resource": {"id": 388, "owner": {"id": 457}, "assignee": {"id": 76}, "organization": {"id": 657}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 77, "privilege": "user"}, "organization": {"id": 182, "owner": {"id": 77}, "user": {"role": "owner"}}}, "resource": {"id": 303, "owner": {"id": 447}, "assignee": {"id": 77}, "organization": {"id": 182}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 69, "privilege": "user"}, "organization": {"id": 119, "owner": {"id": 228}, "user": {"role": "maintainer"}}}, "resource": {"id": 343, "owner": {"id": 479}, "assignee": {"id": 69}, "organization": {"id": 641}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 70, "privilege": "user"}, "organization": {"id": 171, "owner": {"id": 225}, "user": {"role": "maintainer"}}}, "resource": {"id": 304, "owner": {"id": 413}, "assignee": {"id": 70}, "organization": {"id": 171}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 2, "privilege": "user"}, "organization": {"id": 122, "owner": {"id": 296}, "user": {"role": "supervisor"}}}, "resource": {"id": 377, "owner": {"id": 467}, "assignee": {"id": 2}, "organization": {"id": 681}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 43, "privilege": "user"}, "organization": {"id": 186, "owner": {"id": 229}, "user": {"role": "supervisor"}}}, "resource": {"id": 327, "owner": {"id": 493}, "assignee": {"id": 43}, "organization": {"id": 186}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 99, "privilege": "user"}, "organization": {"id": 132, "owner": {"id": 286}, "user": {"role": "worker"}}}, "resource": {"id": 319, "owner": {"id": 460}, "assignee": {"id": 99}, "organization": {"id": 661}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 8, "privilege": "user"}, "organization": {"id": 140, "owner": {"id": 283}, "user": {"role": "worker"}}}, "resource": {"id": 312, "owner": {"id": 401}, "assignee": {"id": 8}, "organization": {"id": 140}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 95, "privilege": "user"}, "organization": {"id": 162, "owner": {"id": 256}, "user": {"role": null}}}, "resource": {"id": 324, "owner": {"id": 469}, "assignee": {"id": 95}, "organization": {"id": 688}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 17, "privilege": "user"}, "organization": {"id": 181, "owner": {"id": 298}, "user": {"role": null}}}, "resource": {"id": 380, "owner": {"id": 499}, "assignee": {"id": 17}, "organization": {"id": 181}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 6, "privilege": "worker"}, "organization": {"id": 149, "owner": {"id": 6}, "user": {"role": "owner"}}}, "resource": {"id": 374, "owner": {"id": 486}, "assignee": {"id": 6}, "organization": {"id": 669}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 27, "privilege": "worker"}, "organization": {"id": 116, "owner": {"id": 27}, "user": {"role": "owner"}}}, "resource": {"id": 321, "owner": {"id": 408}, "assignee": {"id": 27}, "organization": {"id": 116}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 93, "privilege": "worker"}, "organization": {"id": 180, "owner": {"id": 218}, "user": {"role": "maintainer"}}}, "resource": {"id": 359, "owner": {"id": 470}, "assignee": {"id": 93}, "organization": {"id": 605}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 55, "privilege": "worker"}, "organization": {"id": 110, "owner": {"id": 226}, "user": {"role": "maintainer"}}}, "resource": {"id": 349, "owner": {"id": 403}, "assignee": {"id": 55}, "organization": {"id": 110}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 43, "privilege": "worker"}, "organization": {"id": 104, "owner": {"id": 267}, "user": {"role": "supervisor"}}}, "resource": {"id": 327, "owner": {"id": 497}, "assignee": {"id": 43}, "organization": {"id": 670}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 66, "privilege": "worker"}, "organization": {"id": 104, "owner": {"id": 249}, "user": {"role": "supervisor"}}}, "resource": {"id": 377, "owner": {"id": 461}, "assignee": {"id": 66}, "organization": {"id": 104}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 8, "privilege": "worker"}, "organization": {"id": 119, "owner": {"id": 282}, "user": {"role": "worker"}}}, "resource": {"id": 386, "owner": {"id": 419}, "assignee": {"id": 8}, "organization": {"id": 619}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 88, "privilege": "worker"}, "organization": {"id": 174, "owner": {"id": 207}, "user": {"role": "worker"}}}, "resource": {"id": 391, "owner": {"id": 411}, "assignee": {"id": 88}, "organization": {"id": 174}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 71, "privilege": "worker"}, "organization": {"id": 116, "owner": {"id": 227}, "user": {"role": null}}}, "resource": {"id": 347, "owner": {"id": 468}, "assignee": {"id": 71}, "organization": {"id": 694}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 70, "privilege": "worker"}, "organization": {"id": 177, "owner": {"id": 201}, "user": {"role": null}}}, "resource": {"id": 368, "owner": {"id": 457}, "assignee": {"id": 70}, "organization": {"id": 177}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 79, "privilege": "none"}, "organization": {"id": 184, "owner": {"id": 79}, "user": {"role": "owner"}}}, "resource": {"id": 327, "owner": {"id": 464}, "assignee": {"id": 79}, "organization": {"id": 650}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 17, "privilege": "none"}, "organization": {"id": 120, "owner": {"id": 17}, "user": {"role": "owner"}}}, "resource": {"id": 343, "owner": {"id": 476}, "assignee": {"id": 17}, "organization": {"id": 120}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 15, "privilege": "none"}, "organization": {"id": 162, "owner": {"id": 227}, "user": {"role": "maintainer"}}}, "resource": {"id": 315, "owner": {"id": 438}, "assignee": {"id": 15}, "organization": {"id": 675}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 16, "privilege": "none"}, "organization": {"id": 155, "owner": {"id": 230}, "user": {"role": "maintainer"}}}, "resource": {"id": 395, "owner": {"id": 413}, "assignee": {"id": 16}, "organization": {"id": 155}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 7, "privilege": "none"}, "organization": {"id": 157, "owner": {"id": 267}, "user": {"role": "supervisor"}}}, "resource": {"id": 324, "owner": {"id": 413}, "assignee": {"id": 7}, "organization": {"id": 633}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 2, "privilege": "none"}, "organization": {"id": 138, "owner": {"id": 274}, "user": {"role": "supervisor"}}}, "resource": {"id": 303, "owner": {"id": 435}, "assignee": {"id": 2}, "organization": {"id": 138}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 12, "privilege": "none"}, "organization": {"id": 145, "owner": {"id": 258}, "user": {"role": "worker"}}}, "resource": {"id": 371, "owner": {"id": 425}, "assignee": {"id": 12}, "organization": {"id": 669}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 92, "privilege": "none"}, "organization": {"id": 103, "owner": {"id": 225}, "user": {"role": "worker"}}}, "resource": {"id": 351, "owner": {"id": 497}, "assignee": {"id": 92}, "organization": {"id": 103}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 46, "privilege": "none"}, "organization": {"id": 170, "owner": {"id": 214}, "user": {"role": null}}}, "resource": {"id": 311, "owner": {"id": 457}, "assignee": {"id": 46}, "organization": {"id": 613}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 25, "privilege": "none"}, "organization": {"id": 147, "owner": {"id": 245}, "user": {"role": null}}}, "resource": {"id": 343, "owner": {"id": 467}, "assignee": {"id": 25}, "organization": {"id": 147}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_OWNER_resource_same_org_FALSE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 61, "privilege": "admin"}, "organization": {"id": 125, "owner": {"id": 61}, "user": {"role": "owner"}}}, "resource": {"id": 399, "owner": {"id": 489}, "assignee": {"id": 599}, "organization": {"id": 622}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 68, "privilege": "admin"}, "organization": {"id": 115, "owner": {"id": 68}, "user": {"role": "owner"}}}, "resource": {"id": 330, "owner": {"id": 439}, "assignee": {"id": 535}, "organization": {"id": 115}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_MAINTAINER_resource_same_org_FALSE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 83, "privilege": "admin"}, "organization": {"id": 199, "owner": {"id": 241}, "user": {"role": "maintainer"}}}, "resource": {"id": 389, "owner": {"id": 479}, "assignee": {"id": 502}, "organization": {"id": 680}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 63, "privilege": "admin"}, "organization": {"id": 122, "owner": {"id": 289}, "user": {"role": "maintainer"}}}, "resource": {"id": 322, "owner": {"id": 425}, "assignee": {"id": 584}, "organization": {"id": 122}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_SUPERVISOR_resource_same_org_FALSE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 41, "privilege": "admin"}, "organization": {"id": 195, "owner": {"id": 270}, "user": {"role": "supervisor"}}}, "resource": {"id": 369, "owner": {"id": 457}, "assignee": {"id": 526}, "organization": {"id": 636}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 51, "privilege": "admin"}, "organization": {"id": 167, "owner": {"id": 221}, "user": {"role": "supervisor"}}}, "resource": {"id": 305, "owner": {"id": 454}, "assignee": {"id": 586}, "organization": {"id": 167}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_WORKER_resource_same_org_FALSE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 2, "privilege": "admin"}, "organization": {"id": 126, "owner": {"id": 282}, "user": {"role": "worker"}}}, "resource": {"id": 362, "owner": {"id": 499}, "assignee": {"id": 525}, "organization": {"id": 652}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 37, "privilege": "admin"}, "organization": {"id": 146, "owner": {"id": 250}, "user": {"role": "worker"}}}, "resource": {"id": 391, "owner": {"id": 418}, "assignee": {"id": 584}, "organization": {"id": 146}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_NONE_resource_same_org_FALSE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 42, "privilege": "admin"}, "organization": {"id": 143, "owner": {"id": 264}, "user": {"role": null}}}, "resource": {"id": 337, "owner": {"id": 469}, "assignee": {"id": 510}, "organization": {"id": 636}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 13, "privilege": "admin"}, "organization": {"id": 195, "owner": {"id": 261}, "user": {"role": null}}}, "resource": {"id": 390, "owner": {"id": 487}, "assignee": {"id": 538}, "organization": {"id": 195}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 79, "privilege": "business"}, "organization": {"id": 152, "owner": {"id": 79}, "user": {"role": "owner"}}}, "resource": {"id": 358, "owner": {"id": 418}, "assignee": {"id": 510}, "organization": {"id": 630}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 13, "privilege": "business"}, "organization": {"id": 195, "owner": {"id": 13}, "user": {"role": "owner"}}}, "resource": {"id": 384, "owner": {"id": 499}, "assignee": {"id": 502}, "organization": {"id": 195}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 80, "privilege": "business"}, "organization": {"id": 117, "owner": {"id": 250}, "user": {"role": "maintainer"}}}, "resource": {"id": 335, "owner": {"id": 491}, "assignee": {"id": 565}, "organization": {"id": 630}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 34, "privilege": "business"}, "organization": {"id": 195, "owner": {"id": 292}, "user": {"role": "maintainer"}}}, "resource": {"id": 336, "owner": {"id": 470}, "assignee": {"id": 513}, "organization": {"id": 195}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 64, "privilege": "business"}, "organization": {"id": 155, "owner": {"id": 248}, "user": {"role": "supervisor"}}}, "resource": {"id": 387, "owner": {"id": 446}, "assignee": {"id": 560}, "organization": {"id": 681}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 15, "privilege": "business"}, "organization": {"id": 101, "owner": {"id": 208}, "user": {"role": "supervisor"}}}, "resource": {"id": 383, "owner": {"id": 449}, "assignee": {"id": 536}, "organization": {"id": 101}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 90, "privilege": "business"}, "organization": {"id": 173, "owner": {"id": 260}, "user": {"role": "worker"}}}, "resource": {"id": 353, "owner": {"id": 444}, "assignee": {"id": 570}, "organization": {"id": 640}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_WORKER_resource_same_org_TRUE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 21, "privilege": "business"}, "organization": {"id": 192, "owner": {"id": 222}, "user": {"role": "worker"}}}, "resource": {"id": 372, "owner": {"id": 437}, "assignee": {"id": 570}, "organization": {"id": 192}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 19, "privilege": "business"}, "organization": {"id": 146, "owner": {"id": 220}, "user": {"role": null}}}, "resource": {"id": 354, "owner": {"id": 484}, "assignee": {"id": 568}, "organization": {"id": 636}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 71, "privilege": "business"}, "organization": {"id": 156, "owner": {"id": 262}, "user": {"role": null}}}, "resource": {"id": 325, "owner": {"id": 489}, "assignee": {"id": 532}, "organization": {"id": 156}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 62, "privilege": "user"}, "organization": {"id": 143, "owner": {"id": 62}, "user": {"role": "owner"}}}, "resource": {"id": 310, "owner": {"id": 452}, "assignee": {"id": 501}, "organization": {"id": 645}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 4, "privilege": "user"}, "organization": {"id": 146, "owner": {"id": 4}, "user": {"role": "owner"}}}, "resource": {"id": 332, "owner": {"id": 489}, "assignee": {"id": 584}, "organization": {"id": 146}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 7, "privilege": "user"}, "organization": {"id": 168, "owner": {"id": 230}, "user": {"role": "maintainer"}}}, "resource": {"id": 309, "owner": {"id": 470}, "assignee": {"id": 511}, "organization": {"id": 665}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 51, "privilege": "user"}, "organization": {"id": 117, "owner": {"id": 230}, "user": {"role": "maintainer"}}}, "resource": {"id": 307, "owner": {"id": 491}, "assignee": {"id": 527}, "organization": {"id": 117}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 52, "privilege": "user"}, "organization": {"id": 121, "owner": {"id": 218}, "user": {"role": "supervisor"}}}, "resource": {"id": 370, "owner": {"id": 480}, "assignee": {"id": 523}, "organization": {"id": 657}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 0, "privilege": "user"}, "organization": {"id": 145, "owner": {"id": 200}, "user": {"role": "supervisor"}}}, "resource": {"id": 351, "owner": {"id": 491}, "assignee": {"id": 576}, "organization": {"id": 145}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 7, "privilege": "user"}, "organization": {"id": 144, "owner": {"id": 266}, "user": {"role": "worker"}}}, "resource": {"id": 317, "owner": {"id": 432}, "assignee": {"id": 518}, "organization": {"id": 622}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_WORKER_resource_same_org_TRUE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 8, "privilege": "user"}, "organization": {"id": 114, "owner": {"id": 236}, "user": {"role": "worker"}}}, "resource": {"id": 307, "owner": {"id": 487}, "assignee": {"id": 508}, "organization": {"id": 114}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 15, "privilege": "user"}, "organization": {"id": 156, "owner": {"id": 225}, "user": {"role": null}}}, "resource": {"id": 307, "owner": {"id": 477}, "assignee": {"id": 529}, "organization": {"id": 624}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 32, "privilege": "user"}, "organization": {"id": 113, "owner": {"id": 290}, "user": {"role": null}}}, "resource": {"id": 302, "owner": {"id": 480}, "assignee": {"id": 587}, "organization": {"id": 113}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 88, "privilege": "worker"}, "organization": {"id": 123, "owner": {"id": 88}, "user": {"role": "owner"}}}, "resource": {"id": 308, "owner": {"id": 486}, "assignee": {"id": 536}, "organization": {"id": 604}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 14, "privilege": "worker"}, "organization": {"id": 137, "owner": {"id": 14}, "user": {"role": "owner"}}}, "resource": {"id": 355, "owner": {"id": 432}, "assignee": {"id": 599}, "organization": {"id": 137}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 78, "privilege": "worker"}, "organization": {"id": 148, "owner": {"id": 227}, "user": {"role": "maintainer"}}}, "resource": {"id": 352, "owner": {"id": 450}, "assignee": {"id": 572}, "organization": {"id": 676}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 18, "privilege": "worker"}, "organization": {"id": 156, "owner": {"id": 283}, "user": {"role": "maintainer"}}}, "resource": {"id": 397, "owner": {"id": 467}, "assignee": {"id": 527}, "organization": {"id": 156}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 33, "privilege": "worker"}, "organization": {"id": 173, "owner": {"id": 298}, "user": {"role": "supervisor"}}}, "resource": {"id": 355, "owner": {"id": 468}, "assignee": {"id": 513}, "organization": {"id": 658}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 7, "privilege": "worker"}, "organization": {"id": 106, "owner": {"id": 211}, "user": {"role": "supervisor"}}}, "resource": {"id": 378, "owner": {"id": 402}, "assignee": {"id": 573}, "organization": {"id": 106}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 35, "privilege": "worker"}, "organization": {"id": 128, "owner": {"id": 271}, "user": {"role": "worker"}}}, "resource": {"id": 359, "owner": {"id": 440}, "assignee": {"id": 526}, "organization": {"id": 635}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_WORKER_resource_same_org_TRUE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 92, "privilege": "worker"}, "organization": {"id": 170, "owner": {"id": 218}, "user": {"role": "worker"}}}, "resource": {"id": 386, "owner": {"id": 490}, "assignee": {"id": 588}, "organization": {"id": 170}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 16, "privilege": "worker"}, "organization": {"id": 137, "owner": {"id": 221}, "user": {"role": null}}}, "resource": {"id": 345, "owner": {"id": 468}, "assignee": {"id": 525}, "organization": {"id": 656}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 77, "privilege": "worker"}, "organization": {"id": 191, "owner": {"id": 297}, "user": {"role": null}}}, "resource": {"id": 324, "owner": {"id": 415}, "assignee": {"id": 588}, "organization": {"id": 191}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 31, "privilege": "none"}, "organization": {"id": 129, "owner": {"id": 31}, "user": {"role": "owner"}}}, "resource": {"id": 300, "owner": {"id": 432}, "assignee": {"id": 570}, "organization": {"id": 681}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_OWNER_resource_same_org_TRUE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 0, "privilege": "none"}, "organization": {"id": 199, "owner": {"id": 0}, "user": {"role": "owner"}}}, "resource": {"id": 317, "owner": {"id": 447}, "assignee": {"id": 553}, "organization": {"id": 199}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 12, "privilege": "none"}, "organization": {"id": 175, "owner": {"id": 233}, "user": {"role": "maintainer"}}}, "resource": {"id": 388, "owner": {"id": 448}, "assignee": {"id": 538}, "organization": {"id": 667}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_MAINTAINER_resource_same_org_TRUE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 34, "privilege": "none"}, "organization": {"id": 147, "owner": {"id": 249}, "user": {"role": "maintainer"}}}, "resource": {"id": 339, "owner": {"id": 468}, "assignee": {"id": 576}, "organization": {"id": 147}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 53, "privilege": "none"}, "organization": {"id": 109, "owner": {"id": 275}, "user": {"role": "supervisor"}}}, "resource": {"id": 379, "owner": {"id": 445}, "assignee": {"id": 565}, "organization": {"id": 643}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_SUPERVISOR_resource_same_org_TRUE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 68, "privilege": "none"}, "organization": {"id": 122, "owner": {"id": 230}, "user": {"role": "supervisor"}}}, "resource": {"id": 351, "owner": {"id": 453}, "assignee": {"id": 552}, "organization": {"id": 122}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 81, "privilege": "none"}, "organization": {"id": 129, "owner": {"id": 262}, "user": {"role": "worker"}}}, "resource": {"id": 364, "owner": {"id": 473}, "assignee": {"id": 510}, "organization": {"id": 603}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_WORKER_resource_same_org_TRUE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 55, "privilege": "none"}, "organization": {"id": 180, "owner": {"id": 208}, "user": {"role": "worker"}}}, "resource": {"id": 397, "owner": {"id": 416}, "assignee": {"id": 551}, "organization": {"id": 180}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 47, "privilege": "none"}, "organization": {"id": 161, "owner": {"id": 264}, "user": {"role": null}}}, "resource": {"id": 357, "owner": {"id": 445}, "assignee": {"id": 552}, "organization": {"id": 674}}}
}

test_scope_EXPORT_ANNOTATIONS_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "export:annotations", "auth": {"user": {"id": 74, "privilege": "none"}, "organization": {"id": 168, "owner": {"id": 225}, "user": {"role": null}}}, "resource": {"id": 317, "owner": {"id": 406}, "assignee": {"id": 532}, "organization": {"id": 168}}}
}

test_scope_DELETE_context_SANDBOX_ownership_OWNER_privilege_ADMIN_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 48, "privilege": "admin"}, "organization": null}, "resource": {"id": 308, "owner": {"id": 48}, "assignee": {"id": 514}, "organization": {"id": 642}}}
}

test_scope_DELETE_context_SANDBOX_ownership_OWNER_privilege_BUSINESS_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 17, "privilege": "business"}, "organization": null}, "resource": {"id": 323, "owner": {"id": 17}, "assignee": {"id": 583}, "organization": {"id": 634}}}
}

test_scope_DELETE_context_SANDBOX_ownership_OWNER_privilege_USER_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 50, "privilege": "user"}, "organization": null}, "resource": {"id": 335, "owner": {"id": 50}, "assignee": {"id": 555}, "organization": {"id": 637}}}
}

test_scope_DELETE_context_SANDBOX_ownership_OWNER_privilege_WORKER_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 99, "privilege": "worker"}, "organization": null}, "resource": {"id": 383, "owner": {"id": 99}, "assignee": {"id": 545}, "organization": {"id": 684}}}
}

test_scope_DELETE_context_SANDBOX_ownership_OWNER_privilege_NONE_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 20, "privilege": "none"}, "organization": null}, "resource": {"id": 312, "owner": {"id": 20}, "assignee": {"id": 570}, "organization": {"id": 627}}}
}

test_scope_DELETE_context_SANDBOX_ownership_ASSIGNEE_privilege_ADMIN_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 41, "privilege": "admin"}, "organization": null}, "resource": {"id": 309, "owner": {"id": 478}, "assignee": {"id": 41}, "organization": {"id": 626}}}
}

test_scope_DELETE_context_SANDBOX_ownership_ASSIGNEE_privilege_BUSINESS_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 21, "privilege": "business"}, "organization": null}, "resource": {"id": 379, "owner": {"id": 499}, "assignee": {"id": 21}, "organization": {"id": 630}}}
}

test_scope_DELETE_context_SANDBOX_ownership_ASSIGNEE_privilege_USER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 16, "privilege": "user"}, "organization": null}, "resource": {"id": 313, "owner": {"id": 483}, "assignee": {"id": 16}, "organization": {"id": 600}}}
}

test_scope_DELETE_context_SANDBOX_ownership_ASSIGNEE_privilege_WORKER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 29, "privilege": "worker"}, "organization": null}, "resource": {"id": 327, "owner": {"id": 477}, "assignee": {"id": 29}, "organization": {"id": 646}}}
}

test_scope_DELETE_context_SANDBOX_ownership_ASSIGNEE_privilege_NONE_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 35, "privilege": "none"}, "organization": null}, "resource": {"id": 349, "owner": {"id": 437}, "assignee": {"id": 35}, "organization": {"id": 686}}}
}

test_scope_DELETE_context_SANDBOX_ownership_NONE_privilege_ADMIN_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 96, "privilege": "admin"}, "organization": null}, "resource": {"id": 350, "owner": {"id": 419}, "assignee": {"id": 522}, "organization": {"id": 698}}}
}

test_scope_DELETE_context_SANDBOX_ownership_NONE_privilege_BUSINESS_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 97, "privilege": "business"}, "organization": null}, "resource": {"id": 394, "owner": {"id": 431}, "assignee": {"id": 533}, "organization": {"id": 676}}}
}

test_scope_DELETE_context_SANDBOX_ownership_NONE_privilege_USER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 14, "privilege": "user"}, "organization": null}, "resource": {"id": 347, "owner": {"id": 420}, "assignee": {"id": 585}, "organization": {"id": 613}}}
}

test_scope_DELETE_context_SANDBOX_ownership_NONE_privilege_WORKER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 20, "privilege": "worker"}, "organization": null}, "resource": {"id": 346, "owner": {"id": 405}, "assignee": {"id": 590}, "organization": {"id": 626}}}
}

test_scope_DELETE_context_SANDBOX_ownership_NONE_privilege_NONE_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 26, "privilege": "none"}, "organization": null}, "resource": {"id": 308, "owner": {"id": 499}, "assignee": {"id": 585}, "organization": {"id": 649}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_OWNER_resource_same_org_FALSE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 1, "privilege": "admin"}, "organization": {"id": 177, "owner": {"id": 1}, "user": {"role": "owner"}}}, "resource": {"id": 340, "owner": {"id": 1}, "assignee": {"id": 589}, "organization": {"id": 629}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 42, "privilege": "admin"}, "organization": {"id": 134, "owner": {"id": 42}, "user": {"role": "owner"}}}, "resource": {"id": 356, "owner": {"id": 42}, "assignee": {"id": 547}, "organization": {"id": 134}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_MAINTAINER_resource_same_org_FALSE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 56, "privilege": "admin"}, "organization": {"id": 167, "owner": {"id": 280}, "user": {"role": "maintainer"}}}, "resource": {"id": 328, "owner": {"id": 56}, "assignee": {"id": 557}, "organization": {"id": 691}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 62, "privilege": "admin"}, "organization": {"id": 197, "owner": {"id": 238}, "user": {"role": "maintainer"}}}, "resource": {"id": 319, "owner": {"id": 62}, "assignee": {"id": 592}, "organization": {"id": 197}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_SUPERVISOR_resource_same_org_FALSE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 91, "privilege": "admin"}, "organization": {"id": 176, "owner": {"id": 284}, "user": {"role": "supervisor"}}}, "resource": {"id": 348, "owner": {"id": 91}, "assignee": {"id": 586}, "organization": {"id": 648}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 32, "privilege": "admin"}, "organization": {"id": 139, "owner": {"id": 265}, "user": {"role": "supervisor"}}}, "resource": {"id": 344, "owner": {"id": 32}, "assignee": {"id": 597}, "organization": {"id": 139}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_WORKER_resource_same_org_FALSE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 21, "privilege": "admin"}, "organization": {"id": 168, "owner": {"id": 245}, "user": {"role": "worker"}}}, "resource": {"id": 359, "owner": {"id": 21}, "assignee": {"id": 535}, "organization": {"id": 602}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 50, "privilege": "admin"}, "organization": {"id": 164, "owner": {"id": 212}, "user": {"role": "worker"}}}, "resource": {"id": 344, "owner": {"id": 50}, "assignee": {"id": 501}, "organization": {"id": 164}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_NONE_resource_same_org_FALSE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 19, "privilege": "admin"}, "organization": {"id": 177, "owner": {"id": 273}, "user": {"role": null}}}, "resource": {"id": 360, "owner": {"id": 19}, "assignee": {"id": 564}, "organization": {"id": 640}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 12, "privilege": "admin"}, "organization": {"id": 127, "owner": {"id": 222}, "user": {"role": null}}}, "resource": {"id": 361, "owner": {"id": 12}, "assignee": {"id": 505}, "organization": {"id": 127}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 13, "privilege": "business"}, "organization": {"id": 119, "owner": {"id": 13}, "user": {"role": "owner"}}}, "resource": {"id": 399, "owner": {"id": 13}, "assignee": {"id": 559}, "organization": {"id": 613}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 19, "privilege": "business"}, "organization": {"id": 183, "owner": {"id": 19}, "user": {"role": "owner"}}}, "resource": {"id": 390, "owner": {"id": 19}, "assignee": {"id": 512}, "organization": {"id": 183}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 86, "privilege": "business"}, "organization": {"id": 152, "owner": {"id": 273}, "user": {"role": "maintainer"}}}, "resource": {"id": 318, "owner": {"id": 86}, "assignee": {"id": 588}, "organization": {"id": 606}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 72, "privilege": "business"}, "organization": {"id": 130, "owner": {"id": 275}, "user": {"role": "maintainer"}}}, "resource": {"id": 396, "owner": {"id": 72}, "assignee": {"id": 592}, "organization": {"id": 130}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 11, "privilege": "business"}, "organization": {"id": 195, "owner": {"id": 242}, "user": {"role": "supervisor"}}}, "resource": {"id": 395, "owner": {"id": 11}, "assignee": {"id": 552}, "organization": {"id": 694}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 83, "privilege": "business"}, "organization": {"id": 156, "owner": {"id": 203}, "user": {"role": "supervisor"}}}, "resource": {"id": 338, "owner": {"id": 83}, "assignee": {"id": 581}, "organization": {"id": 156}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 3, "privilege": "business"}, "organization": {"id": 103, "owner": {"id": 288}, "user": {"role": "worker"}}}, "resource": {"id": 355, "owner": {"id": 3}, "assignee": {"id": 573}, "organization": {"id": 640}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 79, "privilege": "business"}, "organization": {"id": 115, "owner": {"id": 210}, "user": {"role": "worker"}}}, "resource": {"id": 304, "owner": {"id": 79}, "assignee": {"id": 585}, "organization": {"id": 115}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 82, "privilege": "business"}, "organization": {"id": 161, "owner": {"id": 201}, "user": {"role": null}}}, "resource": {"id": 393, "owner": {"id": 82}, "assignee": {"id": 599}, "organization": {"id": 622}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 44, "privilege": "business"}, "organization": {"id": 138, "owner": {"id": 285}, "user": {"role": null}}}, "resource": {"id": 301, "owner": {"id": 44}, "assignee": {"id": 534}, "organization": {"id": 138}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 67, "privilege": "user"}, "organization": {"id": 110, "owner": {"id": 67}, "user": {"role": "owner"}}}, "resource": {"id": 381, "owner": {"id": 67}, "assignee": {"id": 503}, "organization": {"id": 612}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 21, "privilege": "user"}, "organization": {"id": 185, "owner": {"id": 21}, "user": {"role": "owner"}}}, "resource": {"id": 336, "owner": {"id": 21}, "assignee": {"id": 555}, "organization": {"id": 185}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 30, "privilege": "user"}, "organization": {"id": 176, "owner": {"id": 247}, "user": {"role": "maintainer"}}}, "resource": {"id": 364, "owner": {"id": 30}, "assignee": {"id": 539}, "organization": {"id": 647}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 22, "privilege": "user"}, "organization": {"id": 149, "owner": {"id": 227}, "user": {"role": "maintainer"}}}, "resource": {"id": 382, "owner": {"id": 22}, "assignee": {"id": 591}, "organization": {"id": 149}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 90, "privilege": "user"}, "organization": {"id": 189, "owner": {"id": 286}, "user": {"role": "supervisor"}}}, "resource": {"id": 355, "owner": {"id": 90}, "assignee": {"id": 571}, "organization": {"id": 642}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 42, "privilege": "user"}, "organization": {"id": 120, "owner": {"id": 239}, "user": {"role": "supervisor"}}}, "resource": {"id": 301, "owner": {"id": 42}, "assignee": {"id": 578}, "organization": {"id": 120}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 23, "privilege": "user"}, "organization": {"id": 164, "owner": {"id": 285}, "user": {"role": "worker"}}}, "resource": {"id": 310, "owner": {"id": 23}, "assignee": {"id": 510}, "organization": {"id": 632}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 72, "privilege": "user"}, "organization": {"id": 137, "owner": {"id": 259}, "user": {"role": "worker"}}}, "resource": {"id": 385, "owner": {"id": 72}, "assignee": {"id": 542}, "organization": {"id": 137}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 49, "privilege": "user"}, "organization": {"id": 132, "owner": {"id": 230}, "user": {"role": null}}}, "resource": {"id": 386, "owner": {"id": 49}, "assignee": {"id": 589}, "organization": {"id": 663}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 33, "privilege": "user"}, "organization": {"id": 174, "owner": {"id": 247}, "user": {"role": null}}}, "resource": {"id": 399, "owner": {"id": 33}, "assignee": {"id": 540}, "organization": {"id": 174}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 83, "privilege": "worker"}, "organization": {"id": 120, "owner": {"id": 83}, "user": {"role": "owner"}}}, "resource": {"id": 391, "owner": {"id": 83}, "assignee": {"id": 521}, "organization": {"id": 601}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 18, "privilege": "worker"}, "organization": {"id": 124, "owner": {"id": 18}, "user": {"role": "owner"}}}, "resource": {"id": 344, "owner": {"id": 18}, "assignee": {"id": 536}, "organization": {"id": 124}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 77, "privilege": "worker"}, "organization": {"id": 163, "owner": {"id": 278}, "user": {"role": "maintainer"}}}, "resource": {"id": 398, "owner": {"id": 77}, "assignee": {"id": 575}, "organization": {"id": 670}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 3, "privilege": "worker"}, "organization": {"id": 154, "owner": {"id": 213}, "user": {"role": "maintainer"}}}, "resource": {"id": 381, "owner": {"id": 3}, "assignee": {"id": 555}, "organization": {"id": 154}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 71, "privilege": "worker"}, "organization": {"id": 148, "owner": {"id": 232}, "user": {"role": "supervisor"}}}, "resource": {"id": 322, "owner": {"id": 71}, "assignee": {"id": 501}, "organization": {"id": 671}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 86, "privilege": "worker"}, "organization": {"id": 180, "owner": {"id": 236}, "user": {"role": "supervisor"}}}, "resource": {"id": 348, "owner": {"id": 86}, "assignee": {"id": 531}, "organization": {"id": 180}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 14, "privilege": "worker"}, "organization": {"id": 125, "owner": {"id": 238}, "user": {"role": "worker"}}}, "resource": {"id": 353, "owner": {"id": 14}, "assignee": {"id": 561}, "organization": {"id": 628}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 2, "privilege": "worker"}, "organization": {"id": 103, "owner": {"id": 244}, "user": {"role": "worker"}}}, "resource": {"id": 322, "owner": {"id": 2}, "assignee": {"id": 588}, "organization": {"id": 103}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 30, "privilege": "worker"}, "organization": {"id": 188, "owner": {"id": 246}, "user": {"role": null}}}, "resource": {"id": 381, "owner": {"id": 30}, "assignee": {"id": 593}, "organization": {"id": 679}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 57, "privilege": "worker"}, "organization": {"id": 184, "owner": {"id": 216}, "user": {"role": null}}}, "resource": {"id": 357, "owner": {"id": 57}, "assignee": {"id": 577}, "organization": {"id": 184}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 89, "privilege": "none"}, "organization": {"id": 162, "owner": {"id": 89}, "user": {"role": "owner"}}}, "resource": {"id": 396, "owner": {"id": 89}, "assignee": {"id": 563}, "organization": {"id": 616}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_OWNER_resource_same_org_TRUE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 30, "privilege": "none"}, "organization": {"id": 107, "owner": {"id": 30}, "user": {"role": "owner"}}}, "resource": {"id": 389, "owner": {"id": 30}, "assignee": {"id": 519}, "organization": {"id": 107}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 39, "privilege": "none"}, "organization": {"id": 175, "owner": {"id": 264}, "user": {"role": "maintainer"}}}, "resource": {"id": 305, "owner": {"id": 39}, "assignee": {"id": 526}, "organization": {"id": 677}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_MAINTAINER_resource_same_org_TRUE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 69, "privilege": "none"}, "organization": {"id": 186, "owner": {"id": 297}, "user": {"role": "maintainer"}}}, "resource": {"id": 339, "owner": {"id": 69}, "assignee": {"id": 509}, "organization": {"id": 186}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 80, "privilege": "none"}, "organization": {"id": 104, "owner": {"id": 276}, "user": {"role": "supervisor"}}}, "resource": {"id": 311, "owner": {"id": 80}, "assignee": {"id": 576}, "organization": {"id": 656}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_SUPERVISOR_resource_same_org_TRUE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 10, "privilege": "none"}, "organization": {"id": 186, "owner": {"id": 289}, "user": {"role": "supervisor"}}}, "resource": {"id": 398, "owner": {"id": 10}, "assignee": {"id": 541}, "organization": {"id": 186}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 36, "privilege": "none"}, "organization": {"id": 186, "owner": {"id": 214}, "user": {"role": "worker"}}}, "resource": {"id": 371, "owner": {"id": 36}, "assignee": {"id": 532}, "organization": {"id": 653}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_WORKER_resource_same_org_TRUE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 33, "privilege": "none"}, "organization": {"id": 174, "owner": {"id": 221}, "user": {"role": "worker"}}}, "resource": {"id": 307, "owner": {"id": 33}, "assignee": {"id": 521}, "organization": {"id": 174}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 85, "privilege": "none"}, "organization": {"id": 121, "owner": {"id": 267}, "user": {"role": null}}}, "resource": {"id": 318, "owner": {"id": 85}, "assignee": {"id": 505}, "organization": {"id": 635}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 84, "privilege": "none"}, "organization": {"id": 185, "owner": {"id": 248}, "user": {"role": null}}}, "resource": {"id": 309, "owner": {"id": 84}, "assignee": {"id": 540}, "organization": {"id": 185}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_OWNER_resource_same_org_FALSE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 92, "privilege": "admin"}, "organization": {"id": 139, "owner": {"id": 92}, "user": {"role": "owner"}}}, "resource": {"id": 383, "owner": {"id": 432}, "assignee": {"id": 92}, "organization": {"id": 670}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 96, "privilege": "admin"}, "organization": {"id": 107, "owner": {"id": 96}, "user": {"role": "owner"}}}, "resource": {"id": 323, "owner": {"id": 411}, "assignee": {"id": 96}, "organization": {"id": 107}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_MAINTAINER_resource_same_org_FALSE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 76, "privilege": "admin"}, "organization": {"id": 163, "owner": {"id": 257}, "user": {"role": "maintainer"}}}, "resource": {"id": 375, "owner": {"id": 418}, "assignee": {"id": 76}, "organization": {"id": 604}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 92, "privilege": "admin"}, "organization": {"id": 194, "owner": {"id": 231}, "user": {"role": "maintainer"}}}, "resource": {"id": 397, "owner": {"id": 439}, "assignee": {"id": 92}, "organization": {"id": 194}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_SUPERVISOR_resource_same_org_FALSE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 67, "privilege": "admin"}, "organization": {"id": 179, "owner": {"id": 238}, "user": {"role": "supervisor"}}}, "resource": {"id": 303, "owner": {"id": 415}, "assignee": {"id": 67}, "organization": {"id": 654}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 28, "privilege": "admin"}, "organization": {"id": 119, "owner": {"id": 236}, "user": {"role": "supervisor"}}}, "resource": {"id": 383, "owner": {"id": 454}, "assignee": {"id": 28}, "organization": {"id": 119}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_WORKER_resource_same_org_FALSE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 60, "privilege": "admin"}, "organization": {"id": 131, "owner": {"id": 299}, "user": {"role": "worker"}}}, "resource": {"id": 331, "owner": {"id": 407}, "assignee": {"id": 60}, "organization": {"id": 653}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 76, "privilege": "admin"}, "organization": {"id": 133, "owner": {"id": 236}, "user": {"role": "worker"}}}, "resource": {"id": 377, "owner": {"id": 476}, "assignee": {"id": 76}, "organization": {"id": 133}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_NONE_resource_same_org_FALSE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 29, "privilege": "admin"}, "organization": {"id": 189, "owner": {"id": 229}, "user": {"role": null}}}, "resource": {"id": 306, "owner": {"id": 463}, "assignee": {"id": 29}, "organization": {"id": 679}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 37, "privilege": "admin"}, "organization": {"id": 170, "owner": {"id": 241}, "user": {"role": null}}}, "resource": {"id": 308, "owner": {"id": 464}, "assignee": {"id": 37}, "organization": {"id": 170}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 88, "privilege": "business"}, "organization": {"id": 155, "owner": {"id": 88}, "user": {"role": "owner"}}}, "resource": {"id": 377, "owner": {"id": 431}, "assignee": {"id": 88}, "organization": {"id": 610}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 51, "privilege": "business"}, "organization": {"id": 180, "owner": {"id": 51}, "user": {"role": "owner"}}}, "resource": {"id": 396, "owner": {"id": 491}, "assignee": {"id": 51}, "organization": {"id": 180}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 27, "privilege": "business"}, "organization": {"id": 179, "owner": {"id": 294}, "user": {"role": "maintainer"}}}, "resource": {"id": 306, "owner": {"id": 423}, "assignee": {"id": 27}, "organization": {"id": 610}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 82, "privilege": "business"}, "organization": {"id": 191, "owner": {"id": 216}, "user": {"role": "maintainer"}}}, "resource": {"id": 343, "owner": {"id": 487}, "assignee": {"id": 82}, "organization": {"id": 191}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 15, "privilege": "business"}, "organization": {"id": 103, "owner": {"id": 239}, "user": {"role": "supervisor"}}}, "resource": {"id": 333, "owner": {"id": 497}, "assignee": {"id": 15}, "organization": {"id": 645}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_SUPERVISOR_resource_same_org_TRUE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 86, "privilege": "business"}, "organization": {"id": 125, "owner": {"id": 259}, "user": {"role": "supervisor"}}}, "resource": {"id": 380, "owner": {"id": 466}, "assignee": {"id": 86}, "organization": {"id": 125}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 16, "privilege": "business"}, "organization": {"id": 173, "owner": {"id": 261}, "user": {"role": "worker"}}}, "resource": {"id": 312, "owner": {"id": 435}, "assignee": {"id": 16}, "organization": {"id": 679}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_WORKER_resource_same_org_TRUE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 25, "privilege": "business"}, "organization": {"id": 184, "owner": {"id": 255}, "user": {"role": "worker"}}}, "resource": {"id": 354, "owner": {"id": 490}, "assignee": {"id": 25}, "organization": {"id": 184}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 15, "privilege": "business"}, "organization": {"id": 178, "owner": {"id": 237}, "user": {"role": null}}}, "resource": {"id": 331, "owner": {"id": 479}, "assignee": {"id": 15}, "organization": {"id": 630}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 37, "privilege": "business"}, "organization": {"id": 114, "owner": {"id": 224}, "user": {"role": null}}}, "resource": {"id": 373, "owner": {"id": 490}, "assignee": {"id": 37}, "organization": {"id": 114}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 99, "privilege": "user"}, "organization": {"id": 139, "owner": {"id": 99}, "user": {"role": "owner"}}}, "resource": {"id": 302, "owner": {"id": 480}, "assignee": {"id": 99}, "organization": {"id": 667}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 31, "privilege": "user"}, "organization": {"id": 153, "owner": {"id": 31}, "user": {"role": "owner"}}}, "resource": {"id": 389, "owner": {"id": 413}, "assignee": {"id": 31}, "organization": {"id": 153}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 19, "privilege": "user"}, "organization": {"id": 135, "owner": {"id": 215}, "user": {"role": "maintainer"}}}, "resource": {"id": 375, "owner": {"id": 400}, "assignee": {"id": 19}, "organization": {"id": 661}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 19, "privilege": "user"}, "organization": {"id": 150, "owner": {"id": 284}, "user": {"role": "maintainer"}}}, "resource": {"id": 341, "owner": {"id": 422}, "assignee": {"id": 19}, "organization": {"id": 150}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 27, "privilege": "user"}, "organization": {"id": 162, "owner": {"id": 228}, "user": {"role": "supervisor"}}}, "resource": {"id": 346, "owner": {"id": 487}, "assignee": {"id": 27}, "organization": {"id": 604}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_SUPERVISOR_resource_same_org_TRUE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 45, "privilege": "user"}, "organization": {"id": 153, "owner": {"id": 227}, "user": {"role": "supervisor"}}}, "resource": {"id": 375, "owner": {"id": 494}, "assignee": {"id": 45}, "organization": {"id": 153}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 66, "privilege": "user"}, "organization": {"id": 165, "owner": {"id": 283}, "user": {"role": "worker"}}}, "resource": {"id": 346, "owner": {"id": 411}, "assignee": {"id": 66}, "organization": {"id": 669}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_WORKER_resource_same_org_TRUE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 30, "privilege": "user"}, "organization": {"id": 148, "owner": {"id": 267}, "user": {"role": "worker"}}}, "resource": {"id": 302, "owner": {"id": 409}, "assignee": {"id": 30}, "organization": {"id": 148}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 64, "privilege": "user"}, "organization": {"id": 158, "owner": {"id": 234}, "user": {"role": null}}}, "resource": {"id": 314, "owner": {"id": 434}, "assignee": {"id": 64}, "organization": {"id": 687}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 61, "privilege": "user"}, "organization": {"id": 170, "owner": {"id": 209}, "user": {"role": null}}}, "resource": {"id": 374, "owner": {"id": 462}, "assignee": {"id": 61}, "organization": {"id": 170}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 45, "privilege": "worker"}, "organization": {"id": 180, "owner": {"id": 45}, "user": {"role": "owner"}}}, "resource": {"id": 395, "owner": {"id": 415}, "assignee": {"id": 45}, "organization": {"id": 662}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_OWNER_resource_same_org_TRUE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 22, "privilege": "worker"}, "organization": {"id": 173, "owner": {"id": 22}, "user": {"role": "owner"}}}, "resource": {"id": 365, "owner": {"id": 475}, "assignee": {"id": 22}, "organization": {"id": 173}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 97, "privilege": "worker"}, "organization": {"id": 118, "owner": {"id": 253}, "user": {"role": "maintainer"}}}, "resource": {"id": 369, "owner": {"id": 492}, "assignee": {"id": 97}, "organization": {"id": 661}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_MAINTAINER_resource_same_org_TRUE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 52, "privilege": "worker"}, "organization": {"id": 116, "owner": {"id": 272}, "user": {"role": "maintainer"}}}, "resource": {"id": 335, "owner": {"id": 495}, "assignee": {"id": 52}, "organization": {"id": 116}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 33, "privilege": "worker"}, "organization": {"id": 152, "owner": {"id": 214}, "user": {"role": "supervisor"}}}, "resource": {"id": 361, "owner": {"id": 443}, "assignee": {"id": 33}, "organization": {"id": 617}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_SUPERVISOR_resource_same_org_TRUE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 6, "privilege": "worker"}, "organization": {"id": 172, "owner": {"id": 233}, "user": {"role": "supervisor"}}}, "resource": {"id": 322, "owner": {"id": 475}, "assignee": {"id": 6}, "organization": {"id": 172}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 37, "privilege": "worker"}, "organization": {"id": 118, "owner": {"id": 270}, "user": {"role": "worker"}}}, "resource": {"id": 351, "owner": {"id": 460}, "assignee": {"id": 37}, "organization": {"id": 630}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_WORKER_resource_same_org_TRUE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 33, "privilege": "worker"}, "organization": {"id": 144, "owner": {"id": 296}, "user": {"role": "worker"}}}, "resource": {"id": 360, "owner": {"id": 409}, "assignee": {"id": 33}, "organization": {"id": 144}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 32, "privilege": "worker"}, "organization": {"id": 181, "owner": {"id": 252}, "user": {"role": null}}}, "resource": {"id": 374, "owner": {"id": 432}, "assignee": {"id": 32}, "organization": {"id": 604}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 55, "privilege": "worker"}, "organization": {"id": 161, "owner": {"id": 267}, "user": {"role": null}}}, "resource": {"id": 371, "owner": {"id": 418}, "assignee": {"id": 55}, "organization": {"id": 161}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 31, "privilege": "none"}, "organization": {"id": 178, "owner": {"id": 31}, "user": {"role": "owner"}}}, "resource": {"id": 302, "owner": {"id": 490}, "assignee": {"id": 31}, "organization": {"id": 620}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_OWNER_resource_same_org_TRUE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 35, "privilege": "none"}, "organization": {"id": 112, "owner": {"id": 35}, "user": {"role": "owner"}}}, "resource": {"id": 332, "owner": {"id": 436}, "assignee": {"id": 35}, "organization": {"id": 112}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 34, "privilege": "none"}, "organization": {"id": 192, "owner": {"id": 226}, "user": {"role": "maintainer"}}}, "resource": {"id": 348, "owner": {"id": 405}, "assignee": {"id": 34}, "organization": {"id": 633}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_MAINTAINER_resource_same_org_TRUE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 22, "privilege": "none"}, "organization": {"id": 104, "owner": {"id": 286}, "user": {"role": "maintainer"}}}, "resource": {"id": 354, "owner": {"id": 473}, "assignee": {"id": 22}, "organization": {"id": 104}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 64, "privilege": "none"}, "organization": {"id": 100, "owner": {"id": 232}, "user": {"role": "supervisor"}}}, "resource": {"id": 366, "owner": {"id": 412}, "assignee": {"id": 64}, "organization": {"id": 674}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_SUPERVISOR_resource_same_org_TRUE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 69, "privilege": "none"}, "organization": {"id": 131, "owner": {"id": 215}, "user": {"role": "supervisor"}}}, "resource": {"id": 331, "owner": {"id": 427}, "assignee": {"id": 69}, "organization": {"id": 131}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 77, "privilege": "none"}, "organization": {"id": 164, "owner": {"id": 210}, "user": {"role": "worker"}}}, "resource": {"id": 399, "owner": {"id": 411}, "assignee": {"id": 77}, "organization": {"id": 637}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_WORKER_resource_same_org_TRUE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 72, "privilege": "none"}, "organization": {"id": 127, "owner": {"id": 228}, "user": {"role": "worker"}}}, "resource": {"id": 348, "owner": {"id": 492}, "assignee": {"id": 72}, "organization": {"id": 127}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 6, "privilege": "none"}, "organization": {"id": 192, "owner": {"id": 210}, "user": {"role": null}}}, "resource": {"id": 385, "owner": {"id": 407}, "assignee": {"id": 6}, "organization": {"id": 653}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 89, "privilege": "none"}, "organization": {"id": 176, "owner": {"id": 257}, "user": {"role": null}}}, "resource": {"id": 351, "owner": {"id": 425}, "assignee": {"id": 89}, "organization": {"id": 176}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_OWNER_resource_same_org_FALSE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 95, "privilege": "admin"}, "organization": {"id": 194, "owner": {"id": 95}, "user": {"role": "owner"}}}, "resource": {"id": 345, "owner": {"id": 467}, "assignee": {"id": 513}, "organization": {"id": 642}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 47, "privilege": "admin"}, "organization": {"id": 127, "owner": {"id": 47}, "user": {"role": "owner"}}}, "resource": {"id": 381, "owner": {"id": 455}, "assignee": {"id": 579}, "organization": {"id": 127}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_MAINTAINER_resource_same_org_FALSE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 95, "privilege": "admin"}, "organization": {"id": 138, "owner": {"id": 288}, "user": {"role": "maintainer"}}}, "resource": {"id": 377, "owner": {"id": 471}, "assignee": {"id": 522}, "organization": {"id": 628}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 11, "privilege": "admin"}, "organization": {"id": 196, "owner": {"id": 263}, "user": {"role": "maintainer"}}}, "resource": {"id": 377, "owner": {"id": 428}, "assignee": {"id": 568}, "organization": {"id": 196}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_SUPERVISOR_resource_same_org_FALSE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 8, "privilege": "admin"}, "organization": {"id": 149, "owner": {"id": 219}, "user": {"role": "supervisor"}}}, "resource": {"id": 321, "owner": {"id": 430}, "assignee": {"id": 577}, "organization": {"id": 616}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_SUPERVISOR_resource_same_org_TRUE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 0, "privilege": "admin"}, "organization": {"id": 117, "owner": {"id": 252}, "user": {"role": "supervisor"}}}, "resource": {"id": 344, "owner": {"id": 478}, "assignee": {"id": 518}, "organization": {"id": 117}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_WORKER_resource_same_org_FALSE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 80, "privilege": "admin"}, "organization": {"id": 104, "owner": {"id": 292}, "user": {"role": "worker"}}}, "resource": {"id": 305, "owner": {"id": 483}, "assignee": {"id": 591}, "organization": {"id": 648}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_WORKER_resource_same_org_TRUE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 95, "privilege": "admin"}, "organization": {"id": 143, "owner": {"id": 276}, "user": {"role": "worker"}}}, "resource": {"id": 348, "owner": {"id": 485}, "assignee": {"id": 554}, "organization": {"id": 143}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_NONE_resource_same_org_FALSE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 99, "privilege": "admin"}, "organization": {"id": 174, "owner": {"id": 296}, "user": {"role": null}}}, "resource": {"id": 336, "owner": {"id": 495}, "assignee": {"id": 553}, "organization": {"id": 685}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_NONE_resource_same_org_TRUE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 35, "privilege": "admin"}, "organization": {"id": 118, "owner": {"id": 299}, "user": {"role": null}}}, "resource": {"id": 363, "owner": {"id": 410}, "assignee": {"id": 523}, "organization": {"id": 118}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 95, "privilege": "business"}, "organization": {"id": 189, "owner": {"id": 95}, "user": {"role": "owner"}}}, "resource": {"id": 300, "owner": {"id": 438}, "assignee": {"id": 546}, "organization": {"id": 636}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 41, "privilege": "business"}, "organization": {"id": 198, "owner": {"id": 41}, "user": {"role": "owner"}}}, "resource": {"id": 323, "owner": {"id": 410}, "assignee": {"id": 596}, "organization": {"id": 198}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 71, "privilege": "business"}, "organization": {"id": 160, "owner": {"id": 232}, "user": {"role": "maintainer"}}}, "resource": {"id": 396, "owner": {"id": 407}, "assignee": {"id": 538}, "organization": {"id": 626}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 78, "privilege": "business"}, "organization": {"id": 197, "owner": {"id": 296}, "user": {"role": "maintainer"}}}, "resource": {"id": 368, "owner": {"id": 429}, "assignee": {"id": 509}, "organization": {"id": 197}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 99, "privilege": "business"}, "organization": {"id": 170, "owner": {"id": 292}, "user": {"role": "supervisor"}}}, "resource": {"id": 383, "owner": {"id": 436}, "assignee": {"id": 566}, "organization": {"id": 698}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_SUPERVISOR_resource_same_org_TRUE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 14, "privilege": "business"}, "organization": {"id": 163, "owner": {"id": 255}, "user": {"role": "supervisor"}}}, "resource": {"id": 354, "owner": {"id": 412}, "assignee": {"id": 583}, "organization": {"id": 163}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 68, "privilege": "business"}, "organization": {"id": 152, "owner": {"id": 205}, "user": {"role": "worker"}}}, "resource": {"id": 385, "owner": {"id": 415}, "assignee": {"id": 515}, "organization": {"id": 630}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_WORKER_resource_same_org_TRUE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 55, "privilege": "business"}, "organization": {"id": 168, "owner": {"id": 231}, "user": {"role": "worker"}}}, "resource": {"id": 305, "owner": {"id": 461}, "assignee": {"id": 589}, "organization": {"id": 168}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 65, "privilege": "business"}, "organization": {"id": 187, "owner": {"id": 224}, "user": {"role": null}}}, "resource": {"id": 387, "owner": {"id": 428}, "assignee": {"id": 508}, "organization": {"id": 684}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 50, "privilege": "business"}, "organization": {"id": 162, "owner": {"id": 255}, "user": {"role": null}}}, "resource": {"id": 393, "owner": {"id": 441}, "assignee": {"id": 518}, "organization": {"id": 162}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 83, "privilege": "user"}, "organization": {"id": 197, "owner": {"id": 83}, "user": {"role": "owner"}}}, "resource": {"id": 342, "owner": {"id": 424}, "assignee": {"id": 530}, "organization": {"id": 633}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_OWNER_resource_same_org_TRUE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 78, "privilege": "user"}, "organization": {"id": 114, "owner": {"id": 78}, "user": {"role": "owner"}}}, "resource": {"id": 321, "owner": {"id": 402}, "assignee": {"id": 528}, "organization": {"id": 114}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 36, "privilege": "user"}, "organization": {"id": 106, "owner": {"id": 235}, "user": {"role": "maintainer"}}}, "resource": {"id": 379, "owner": {"id": 489}, "assignee": {"id": 537}, "organization": {"id": 695}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_MAINTAINER_resource_same_org_TRUE {
    allow with input as {"scope": "delete", "auth": {"user": {"id": 68, "privilege": "user"}, "organization": {"id": 192, "owner": {"id": 210}, "user": {"role": "maintainer"}}}, "resource": {"id": 329, "owner": {"id": 493}, "assignee": {"id": 596}, "organization": {"id": 192}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 74, "privilege": "user"}, "organization": {"id": 151, "owner": {"id": 257}, "user": {"role": "supervisor"}}}, "resource": {"id": 353, "owner": {"id": 412}, "assignee": {"id": 503}, "organization": {"id": 673}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_SUPERVISOR_resource_same_org_TRUE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 29, "privilege": "user"}, "organization": {"id": 134, "owner": {"id": 262}, "user": {"role": "supervisor"}}}, "resource": {"id": 306, "owner": {"id": 408}, "assignee": {"id": 567}, "organization": {"id": 134}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 57, "privilege": "user"}, "organization": {"id": 183, "owner": {"id": 257}, "user": {"role": "worker"}}}, "resource": {"id": 390, "owner": {"id": 485}, "assignee": {"id": 578}, "organization": {"id": 625}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_WORKER_resource_same_org_TRUE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 82, "privilege": "user"}, "organization": {"id": 159, "owner": {"id": 239}, "user": {"role": "worker"}}}, "resource": {"id": 361, "owner": {"id": 407}, "assignee": {"id": 572}, "organization": {"id": 159}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 52, "privilege": "user"}, "organization": {"id": 141, "owner": {"id": 207}, "user": {"role": null}}}, "resource": {"id": 349, "owner": {"id": 448}, "assignee": {"id": 554}, "organization": {"id": 602}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 83, "privilege": "user"}, "organization": {"id": 121, "owner": {"id": 230}, "user": {"role": null}}}, "resource": {"id": 302, "owner": {"id": 482}, "assignee": {"id": 510}, "organization": {"id": 121}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 18, "privilege": "worker"}, "organization": {"id": 106, "owner": {"id": 18}, "user": {"role": "owner"}}}, "resource": {"id": 387, "owner": {"id": 421}, "assignee": {"id": 570}, "organization": {"id": 668}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_OWNER_resource_same_org_TRUE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 75, "privilege": "worker"}, "organization": {"id": 189, "owner": {"id": 75}, "user": {"role": "owner"}}}, "resource": {"id": 384, "owner": {"id": 436}, "assignee": {"id": 548}, "organization": {"id": 189}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 56, "privilege": "worker"}, "organization": {"id": 141, "owner": {"id": 285}, "user": {"role": "maintainer"}}}, "resource": {"id": 337, "owner": {"id": 459}, "assignee": {"id": 530}, "organization": {"id": 611}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_MAINTAINER_resource_same_org_TRUE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 16, "privilege": "worker"}, "organization": {"id": 152, "owner": {"id": 297}, "user": {"role": "maintainer"}}}, "resource": {"id": 362, "owner": {"id": 401}, "assignee": {"id": 589}, "organization": {"id": 152}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 43, "privilege": "worker"}, "organization": {"id": 106, "owner": {"id": 279}, "user": {"role": "supervisor"}}}, "resource": {"id": 394, "owner": {"id": 491}, "assignee": {"id": 512}, "organization": {"id": 651}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_SUPERVISOR_resource_same_org_TRUE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 97, "privilege": "worker"}, "organization": {"id": 130, "owner": {"id": 250}, "user": {"role": "supervisor"}}}, "resource": {"id": 335, "owner": {"id": 487}, "assignee": {"id": 509}, "organization": {"id": 130}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 38, "privilege": "worker"}, "organization": {"id": 187, "owner": {"id": 277}, "user": {"role": "worker"}}}, "resource": {"id": 307, "owner": {"id": 434}, "assignee": {"id": 535}, "organization": {"id": 649}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_WORKER_resource_same_org_TRUE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 99, "privilege": "worker"}, "organization": {"id": 145, "owner": {"id": 224}, "user": {"role": "worker"}}}, "resource": {"id": 385, "owner": {"id": 422}, "assignee": {"id": 551}, "organization": {"id": 145}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 57, "privilege": "worker"}, "organization": {"id": 157, "owner": {"id": 286}, "user": {"role": null}}}, "resource": {"id": 314, "owner": {"id": 464}, "assignee": {"id": 558}, "organization": {"id": 601}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 47, "privilege": "worker"}, "organization": {"id": 136, "owner": {"id": 240}, "user": {"role": null}}}, "resource": {"id": 351, "owner": {"id": 464}, "assignee": {"id": 536}, "organization": {"id": 136}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_OWNER_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 94, "privilege": "none"}, "organization": {"id": 157, "owner": {"id": 94}, "user": {"role": "owner"}}}, "resource": {"id": 396, "owner": {"id": 452}, "assignee": {"id": 537}, "organization": {"id": 682}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_OWNER_resource_same_org_TRUE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 22, "privilege": "none"}, "organization": {"id": 155, "owner": {"id": 22}, "user": {"role": "owner"}}}, "resource": {"id": 354, "owner": {"id": 445}, "assignee": {"id": 517}, "organization": {"id": 155}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_MAINTAINER_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 87, "privilege": "none"}, "organization": {"id": 162, "owner": {"id": 236}, "user": {"role": "maintainer"}}}, "resource": {"id": 395, "owner": {"id": 461}, "assignee": {"id": 533}, "organization": {"id": 630}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_MAINTAINER_resource_same_org_TRUE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 39, "privilege": "none"}, "organization": {"id": 157, "owner": {"id": 278}, "user": {"role": "maintainer"}}}, "resource": {"id": 330, "owner": {"id": 494}, "assignee": {"id": 549}, "organization": {"id": 157}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_SUPERVISOR_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 65, "privilege": "none"}, "organization": {"id": 183, "owner": {"id": 276}, "user": {"role": "supervisor"}}}, "resource": {"id": 372, "owner": {"id": 424}, "assignee": {"id": 580}, "organization": {"id": 687}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_SUPERVISOR_resource_same_org_TRUE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 81, "privilege": "none"}, "organization": {"id": 146, "owner": {"id": 269}, "user": {"role": "supervisor"}}}, "resource": {"id": 315, "owner": {"id": 442}, "assignee": {"id": 582}, "organization": {"id": 146}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_WORKER_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 12, "privilege": "none"}, "organization": {"id": 132, "owner": {"id": 276}, "user": {"role": "worker"}}}, "resource": {"id": 360, "owner": {"id": 440}, "assignee": {"id": 506}, "organization": {"id": 688}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_WORKER_resource_same_org_TRUE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 70, "privilege": "none"}, "organization": {"id": 193, "owner": {"id": 289}, "user": {"role": "worker"}}}, "resource": {"id": 391, "owner": {"id": 456}, "assignee": {"id": 514}, "organization": {"id": 193}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_NONE_resource_same_org_FALSE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 65, "privilege": "none"}, "organization": {"id": 114, "owner": {"id": 210}, "user": {"role": null}}}, "resource": {"id": 372, "owner": {"id": 436}, "assignee": {"id": 584}, "organization": {"id": 654}}}
}

test_scope_DELETE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_NONE_resource_same_org_TRUE {
    not allow with input as {"scope": "delete", "auth": {"user": {"id": 28, "privilege": "none"}, "organization": {"id": 152, "owner": {"id": 282}, "user": {"role": null}}}, "resource": {"id": 323, "owner": {"id": 461}, "assignee": {"id": 546}, "organization": {"id": 152}}}
}

test_scope_CREATE_context_SANDBOX_ownership_OWNER_privilege_ADMIN_membership_NONE_resource_user_num_resources_0_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 36, "privilege": "admin"}, "organization": null}, "resource": {"owner": {"id": 36}, "assignee": {"id": 514}, "organization": {"id": 608}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_SANDBOX_ownership_OWNER_privilege_ADMIN_membership_NONE_resource_user_num_resources_1_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 90, "privilege": "admin"}, "organization": null}, "resource": {"owner": {"id": 90}, "assignee": {"id": 535}, "organization": {"id": 645}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_SANDBOX_ownership_OWNER_privilege_ADMIN_membership_NONE_resource_user_num_resources_3_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 63, "privilege": "admin"}, "organization": null}, "resource": {"owner": {"id": 63}, "assignee": {"id": 566}, "organization": {"id": 688}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_SANDBOX_ownership_OWNER_privilege_ADMIN_membership_NONE_resource_user_num_resources_10_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 70, "privilege": "admin"}, "organization": null}, "resource": {"owner": {"id": 70}, "assignee": {"id": 596}, "organization": {"id": 678}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_SANDBOX_ownership_OWNER_privilege_BUSINESS_membership_NONE_resource_user_num_resources_0_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 80, "privilege": "business"}, "organization": null}, "resource": {"owner": {"id": 80}, "assignee": {"id": 594}, "organization": {"id": 681}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_SANDBOX_ownership_OWNER_privilege_BUSINESS_membership_NONE_resource_user_num_resources_1_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 51, "privilege": "business"}, "organization": null}, "resource": {"owner": {"id": 51}, "assignee": {"id": 565}, "organization": {"id": 662}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_SANDBOX_ownership_OWNER_privilege_BUSINESS_membership_NONE_resource_user_num_resources_3_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 54, "privilege": "business"}, "organization": null}, "resource": {"owner": {"id": 54}, "assignee": {"id": 539}, "organization": {"id": 692}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_SANDBOX_ownership_OWNER_privilege_BUSINESS_membership_NONE_resource_user_num_resources_10_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 0, "privilege": "business"}, "organization": null}, "resource": {"owner": {"id": 0}, "assignee": {"id": 599}, "organization": {"id": 636}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_SANDBOX_ownership_OWNER_privilege_USER_membership_NONE_resource_user_num_resources_0_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 92, "privilege": "user"}, "organization": null}, "resource": {"owner": {"id": 92}, "assignee": {"id": 523}, "organization": {"id": 676}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_SANDBOX_ownership_OWNER_privilege_USER_membership_NONE_resource_user_num_resources_1_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 7, "privilege": "user"}, "organization": null}, "resource": {"owner": {"id": 7}, "assignee": {"id": 566}, "organization": {"id": 612}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_SANDBOX_ownership_OWNER_privilege_USER_membership_NONE_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 69, "privilege": "user"}, "organization": null}, "resource": {"owner": {"id": 69}, "assignee": {"id": 501}, "organization": {"id": 665}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_SANDBOX_ownership_OWNER_privilege_USER_membership_NONE_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 17, "privilege": "user"}, "organization": null}, "resource": {"owner": {"id": 17}, "assignee": {"id": 532}, "organization": {"id": 613}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_SANDBOX_ownership_OWNER_privilege_WORKER_membership_NONE_resource_user_num_resources_0_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 7, "privilege": "worker"}, "organization": null}, "resource": {"owner": {"id": 7}, "assignee": {"id": 531}, "organization": {"id": 627}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_SANDBOX_ownership_OWNER_privilege_WORKER_membership_NONE_resource_user_num_resources_1_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 47, "privilege": "worker"}, "organization": null}, "resource": {"owner": {"id": 47}, "assignee": {"id": 505}, "organization": {"id": 686}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_SANDBOX_ownership_OWNER_privilege_WORKER_membership_NONE_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 60, "privilege": "worker"}, "organization": null}, "resource": {"owner": {"id": 60}, "assignee": {"id": 570}, "organization": {"id": 688}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_SANDBOX_ownership_OWNER_privilege_WORKER_membership_NONE_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 44, "privilege": "worker"}, "organization": null}, "resource": {"owner": {"id": 44}, "assignee": {"id": 596}, "organization": {"id": 696}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_SANDBOX_ownership_OWNER_privilege_NONE_membership_NONE_resource_user_num_resources_0_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 94, "privilege": "none"}, "organization": null}, "resource": {"owner": {"id": 94}, "assignee": {"id": 526}, "organization": {"id": 653}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_SANDBOX_ownership_OWNER_privilege_NONE_membership_NONE_resource_user_num_resources_1_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 24, "privilege": "none"}, "organization": null}, "resource": {"owner": {"id": 24}, "assignee": {"id": 554}, "organization": {"id": 654}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_SANDBOX_ownership_OWNER_privilege_NONE_membership_NONE_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 42, "privilege": "none"}, "organization": null}, "resource": {"owner": {"id": 42}, "assignee": {"id": 540}, "organization": {"id": 603}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_SANDBOX_ownership_OWNER_privilege_NONE_membership_NONE_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 14, "privilege": "none"}, "organization": null}, "resource": {"owner": {"id": 14}, "assignee": {"id": 578}, "organization": {"id": 611}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_SANDBOX_ownership_ASSIGNEE_privilege_ADMIN_membership_NONE_resource_user_num_resources_0_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 95, "privilege": "admin"}, "organization": null}, "resource": {"owner": {"id": 409}, "assignee": {"id": 95}, "organization": {"id": 603}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_SANDBOX_ownership_ASSIGNEE_privilege_ADMIN_membership_NONE_resource_user_num_resources_1_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 41, "privilege": "admin"}, "organization": null}, "resource": {"owner": {"id": 425}, "assignee": {"id": 41}, "organization": {"id": 693}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_SANDBOX_ownership_ASSIGNEE_privilege_ADMIN_membership_NONE_resource_user_num_resources_3_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 13, "privilege": "admin"}, "organization": null}, "resource": {"owner": {"id": 408}, "assignee": {"id": 13}, "organization": {"id": 614}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_SANDBOX_ownership_ASSIGNEE_privilege_ADMIN_membership_NONE_resource_user_num_resources_10_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 73, "privilege": "admin"}, "organization": null}, "resource": {"owner": {"id": 491}, "assignee": {"id": 73}, "organization": {"id": 647}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_SANDBOX_ownership_ASSIGNEE_privilege_BUSINESS_membership_NONE_resource_user_num_resources_0_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 27, "privilege": "business"}, "organization": null}, "resource": {"owner": {"id": 400}, "assignee": {"id": 27}, "organization": {"id": 605}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_SANDBOX_ownership_ASSIGNEE_privilege_BUSINESS_membership_NONE_resource_user_num_resources_1_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 83, "privilege": "business"}, "organization": null}, "resource": {"owner": {"id": 456}, "assignee": {"id": 83}, "organization": {"id": 681}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_SANDBOX_ownership_ASSIGNEE_privilege_BUSINESS_membership_NONE_resource_user_num_resources_3_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 70, "privilege": "business"}, "organization": null}, "resource": {"owner": {"id": 479}, "assignee": {"id": 70}, "organization": {"id": 636}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_SANDBOX_ownership_ASSIGNEE_privilege_BUSINESS_membership_NONE_resource_user_num_resources_10_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 48, "privilege": "business"}, "organization": null}, "resource": {"owner": {"id": 401}, "assignee": {"id": 48}, "organization": {"id": 674}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_SANDBOX_ownership_ASSIGNEE_privilege_USER_membership_NONE_resource_user_num_resources_0_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 7, "privilege": "user"}, "organization": null}, "resource": {"owner": {"id": 463}, "assignee": {"id": 7}, "organization": {"id": 648}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_SANDBOX_ownership_ASSIGNEE_privilege_USER_membership_NONE_resource_user_num_resources_1_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 24, "privilege": "user"}, "organization": null}, "resource": {"owner": {"id": 444}, "assignee": {"id": 24}, "organization": {"id": 691}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_SANDBOX_ownership_ASSIGNEE_privilege_USER_membership_NONE_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 11, "privilege": "user"}, "organization": null}, "resource": {"owner": {"id": 447}, "assignee": {"id": 11}, "organization": {"id": 639}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_SANDBOX_ownership_ASSIGNEE_privilege_USER_membership_NONE_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 21, "privilege": "user"}, "organization": null}, "resource": {"owner": {"id": 409}, "assignee": {"id": 21}, "organization": {"id": 694}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_SANDBOX_ownership_ASSIGNEE_privilege_WORKER_membership_NONE_resource_user_num_resources_0_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 31, "privilege": "worker"}, "organization": null}, "resource": {"owner": {"id": 497}, "assignee": {"id": 31}, "organization": {"id": 616}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_SANDBOX_ownership_ASSIGNEE_privilege_WORKER_membership_NONE_resource_user_num_resources_1_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 24, "privilege": "worker"}, "organization": null}, "resource": {"owner": {"id": 449}, "assignee": {"id": 24}, "organization": {"id": 652}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_SANDBOX_ownership_ASSIGNEE_privilege_WORKER_membership_NONE_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 15, "privilege": "worker"}, "organization": null}, "resource": {"owner": {"id": 405}, "assignee": {"id": 15}, "organization": {"id": 639}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_SANDBOX_ownership_ASSIGNEE_privilege_WORKER_membership_NONE_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 70, "privilege": "worker"}, "organization": null}, "resource": {"owner": {"id": 491}, "assignee": {"id": 70}, "organization": {"id": 698}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_SANDBOX_ownership_ASSIGNEE_privilege_NONE_membership_NONE_resource_user_num_resources_0_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 82, "privilege": "none"}, "organization": null}, "resource": {"owner": {"id": 427}, "assignee": {"id": 82}, "organization": {"id": 667}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_SANDBOX_ownership_ASSIGNEE_privilege_NONE_membership_NONE_resource_user_num_resources_1_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 69, "privilege": "none"}, "organization": null}, "resource": {"owner": {"id": 492}, "assignee": {"id": 69}, "organization": {"id": 612}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_SANDBOX_ownership_ASSIGNEE_privilege_NONE_membership_NONE_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 28, "privilege": "none"}, "organization": null}, "resource": {"owner": {"id": 449}, "assignee": {"id": 28}, "organization": {"id": 613}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_SANDBOX_ownership_ASSIGNEE_privilege_NONE_membership_NONE_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 47, "privilege": "none"}, "organization": null}, "resource": {"owner": {"id": 403}, "assignee": {"id": 47}, "organization": {"id": 687}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_SANDBOX_ownership_NONE_privilege_ADMIN_membership_NONE_resource_user_num_resources_0_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 91, "privilege": "admin"}, "organization": null}, "resource": {"owner": {"id": 494}, "assignee": {"id": 597}, "organization": {"id": 645}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_SANDBOX_ownership_NONE_privilege_ADMIN_membership_NONE_resource_user_num_resources_1_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 90, "privilege": "admin"}, "organization": null}, "resource": {"owner": {"id": 438}, "assignee": {"id": 592}, "organization": {"id": 664}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_SANDBOX_ownership_NONE_privilege_ADMIN_membership_NONE_resource_user_num_resources_3_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 45, "privilege": "admin"}, "organization": null}, "resource": {"owner": {"id": 419}, "assignee": {"id": 500}, "organization": {"id": 606}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_SANDBOX_ownership_NONE_privilege_ADMIN_membership_NONE_resource_user_num_resources_10_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 81, "privilege": "admin"}, "organization": null}, "resource": {"owner": {"id": 416}, "assignee": {"id": 567}, "organization": {"id": 679}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_SANDBOX_ownership_NONE_privilege_BUSINESS_membership_NONE_resource_user_num_resources_0_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 20, "privilege": "business"}, "organization": null}, "resource": {"owner": {"id": 412}, "assignee": {"id": 578}, "organization": {"id": 629}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_SANDBOX_ownership_NONE_privilege_BUSINESS_membership_NONE_resource_user_num_resources_1_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 29, "privilege": "business"}, "organization": null}, "resource": {"owner": {"id": 459}, "assignee": {"id": 562}, "organization": {"id": 659}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_SANDBOX_ownership_NONE_privilege_BUSINESS_membership_NONE_resource_user_num_resources_3_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 66, "privilege": "business"}, "organization": null}, "resource": {"owner": {"id": 482}, "assignee": {"id": 528}, "organization": {"id": 628}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_SANDBOX_ownership_NONE_privilege_BUSINESS_membership_NONE_resource_user_num_resources_10_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 86, "privilege": "business"}, "organization": null}, "resource": {"owner": {"id": 470}, "assignee": {"id": 589}, "organization": {"id": 675}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_SANDBOX_ownership_NONE_privilege_USER_membership_NONE_resource_user_num_resources_0_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 97, "privilege": "user"}, "organization": null}, "resource": {"owner": {"id": 497}, "assignee": {"id": 523}, "organization": {"id": 619}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_SANDBOX_ownership_NONE_privilege_USER_membership_NONE_resource_user_num_resources_1_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 96, "privilege": "user"}, "organization": null}, "resource": {"owner": {"id": 440}, "assignee": {"id": 543}, "organization": {"id": 667}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_SANDBOX_ownership_NONE_privilege_USER_membership_NONE_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 21, "privilege": "user"}, "organization": null}, "resource": {"owner": {"id": 485}, "assignee": {"id": 511}, "organization": {"id": 662}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_SANDBOX_ownership_NONE_privilege_USER_membership_NONE_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 62, "privilege": "user"}, "organization": null}, "resource": {"owner": {"id": 495}, "assignee": {"id": 562}, "organization": {"id": 627}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_SANDBOX_ownership_NONE_privilege_WORKER_membership_NONE_resource_user_num_resources_0_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 50, "privilege": "worker"}, "organization": null}, "resource": {"owner": {"id": 492}, "assignee": {"id": 519}, "organization": {"id": 647}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_SANDBOX_ownership_NONE_privilege_WORKER_membership_NONE_resource_user_num_resources_1_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 6, "privilege": "worker"}, "organization": null}, "resource": {"owner": {"id": 432}, "assignee": {"id": 573}, "organization": {"id": 626}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_SANDBOX_ownership_NONE_privilege_WORKER_membership_NONE_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 7, "privilege": "worker"}, "organization": null}, "resource": {"owner": {"id": 439}, "assignee": {"id": 546}, "organization": {"id": 664}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_SANDBOX_ownership_NONE_privilege_WORKER_membership_NONE_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 20, "privilege": "worker"}, "organization": null}, "resource": {"owner": {"id": 479}, "assignee": {"id": 537}, "organization": {"id": 684}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_SANDBOX_ownership_NONE_privilege_NONE_membership_NONE_resource_user_num_resources_0_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 92, "privilege": "none"}, "organization": null}, "resource": {"owner": {"id": 440}, "assignee": {"id": 573}, "organization": {"id": 698}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_SANDBOX_ownership_NONE_privilege_NONE_membership_NONE_resource_user_num_resources_1_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 87, "privilege": "none"}, "organization": null}, "resource": {"owner": {"id": 409}, "assignee": {"id": 580}, "organization": {"id": 658}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_SANDBOX_ownership_NONE_privilege_NONE_membership_NONE_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 37, "privilege": "none"}, "organization": null}, "resource": {"owner": {"id": 400}, "assignee": {"id": 534}, "organization": {"id": 630}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_SANDBOX_ownership_NONE_privilege_NONE_membership_NONE_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 31, "privilege": "none"}, "organization": null}, "resource": {"owner": {"id": 420}, "assignee": {"id": 540}, "organization": {"id": 601}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_OWNER_resource_user_num_resources_0_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 81, "privilege": "admin"}, "organization": {"id": 187, "owner": {"id": 81}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 81}, "assignee": {"id": 542}, "organization": {"id": 679}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_OWNER_resource_user_num_resources_1_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 54, "privilege": "admin"}, "organization": {"id": 121, "owner": {"id": 54}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 54}, "assignee": {"id": 501}, "organization": {"id": 633}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_OWNER_resource_user_num_resources_3_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 93, "privilege": "admin"}, "organization": {"id": 127, "owner": {"id": 93}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 93}, "assignee": {"id": 579}, "organization": {"id": 621}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_OWNER_resource_user_num_resources_10_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 79, "privilege": "admin"}, "organization": {"id": 163, "owner": {"id": 79}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 79}, "assignee": {"id": 511}, "organization": {"id": 644}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_OWNER_resource_user_num_resources_0_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 0, "privilege": "admin"}, "organization": {"id": 123, "owner": {"id": 0}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 0}, "assignee": {"id": 504}, "organization": {"id": 123}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_OWNER_resource_user_num_resources_1_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 33, "privilege": "admin"}, "organization": {"id": 159, "owner": {"id": 33}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 33}, "assignee": {"id": 516}, "organization": {"id": 159}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_OWNER_resource_user_num_resources_3_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 62, "privilege": "admin"}, "organization": {"id": 107, "owner": {"id": 62}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 62}, "assignee": {"id": 585}, "organization": {"id": 107}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_OWNER_resource_user_num_resources_10_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 50, "privilege": "admin"}, "organization": {"id": 177, "owner": {"id": 50}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 50}, "assignee": {"id": 525}, "organization": {"id": 177}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_MAINTAINER_resource_user_num_resources_0_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 6, "privilege": "admin"}, "organization": {"id": 189, "owner": {"id": 215}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 6}, "assignee": {"id": 546}, "organization": {"id": 655}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_MAINTAINER_resource_user_num_resources_1_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 99, "privilege": "admin"}, "organization": {"id": 137, "owner": {"id": 246}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 99}, "assignee": {"id": 506}, "organization": {"id": 678}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_MAINTAINER_resource_user_num_resources_3_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 47, "privilege": "admin"}, "organization": {"id": 153, "owner": {"id": 297}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 47}, "assignee": {"id": 568}, "organization": {"id": 659}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_MAINTAINER_resource_user_num_resources_10_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 99, "privilege": "admin"}, "organization": {"id": 153, "owner": {"id": 244}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 99}, "assignee": {"id": 542}, "organization": {"id": 638}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_MAINTAINER_resource_user_num_resources_0_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 76, "privilege": "admin"}, "organization": {"id": 166, "owner": {"id": 209}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 76}, "assignee": {"id": 524}, "organization": {"id": 166}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_MAINTAINER_resource_user_num_resources_1_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 19, "privilege": "admin"}, "organization": {"id": 120, "owner": {"id": 294}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 19}, "assignee": {"id": 526}, "organization": {"id": 120}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_MAINTAINER_resource_user_num_resources_3_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 89, "privilege": "admin"}, "organization": {"id": 115, "owner": {"id": 217}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 89}, "assignee": {"id": 503}, "organization": {"id": 115}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_MAINTAINER_resource_user_num_resources_10_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 52, "privilege": "admin"}, "organization": {"id": 124, "owner": {"id": 217}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 52}, "assignee": {"id": 529}, "organization": {"id": 124}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_SUPERVISOR_resource_user_num_resources_0_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 50, "privilege": "admin"}, "organization": {"id": 139, "owner": {"id": 213}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 50}, "assignee": {"id": 578}, "organization": {"id": 671}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_SUPERVISOR_resource_user_num_resources_1_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 33, "privilege": "admin"}, "organization": {"id": 163, "owner": {"id": 260}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 33}, "assignee": {"id": 529}, "organization": {"id": 612}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_SUPERVISOR_resource_user_num_resources_3_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 26, "privilege": "admin"}, "organization": {"id": 171, "owner": {"id": 268}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 26}, "assignee": {"id": 558}, "organization": {"id": 686}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_SUPERVISOR_resource_user_num_resources_10_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 21, "privilege": "admin"}, "organization": {"id": 135, "owner": {"id": 287}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 21}, "assignee": {"id": 507}, "organization": {"id": 640}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_SUPERVISOR_resource_user_num_resources_0_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 4, "privilege": "admin"}, "organization": {"id": 176, "owner": {"id": 264}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 4}, "assignee": {"id": 536}, "organization": {"id": 176}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_SUPERVISOR_resource_user_num_resources_1_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 14, "privilege": "admin"}, "organization": {"id": 161, "owner": {"id": 273}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 14}, "assignee": {"id": 559}, "organization": {"id": 161}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_SUPERVISOR_resource_user_num_resources_3_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 24, "privilege": "admin"}, "organization": {"id": 160, "owner": {"id": 287}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 24}, "assignee": {"id": 599}, "organization": {"id": 160}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_SUPERVISOR_resource_user_num_resources_10_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 78, "privilege": "admin"}, "organization": {"id": 130, "owner": {"id": 296}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 78}, "assignee": {"id": 522}, "organization": {"id": 130}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_WORKER_resource_user_num_resources_0_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 11, "privilege": "admin"}, "organization": {"id": 133, "owner": {"id": 293}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 11}, "assignee": {"id": 525}, "organization": {"id": 684}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_WORKER_resource_user_num_resources_1_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 95, "privilege": "admin"}, "organization": {"id": 189, "owner": {"id": 213}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 95}, "assignee": {"id": 596}, "organization": {"id": 678}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_WORKER_resource_user_num_resources_3_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 21, "privilege": "admin"}, "organization": {"id": 110, "owner": {"id": 246}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 21}, "assignee": {"id": 540}, "organization": {"id": 643}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_WORKER_resource_user_num_resources_10_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 65, "privilege": "admin"}, "organization": {"id": 156, "owner": {"id": 211}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 65}, "assignee": {"id": 532}, "organization": {"id": 643}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_WORKER_resource_user_num_resources_0_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 42, "privilege": "admin"}, "organization": {"id": 177, "owner": {"id": 247}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 42}, "assignee": {"id": 533}, "organization": {"id": 177}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_WORKER_resource_user_num_resources_1_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 12, "privilege": "admin"}, "organization": {"id": 174, "owner": {"id": 212}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 12}, "assignee": {"id": 518}, "organization": {"id": 174}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_WORKER_resource_user_num_resources_3_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 80, "privilege": "admin"}, "organization": {"id": 111, "owner": {"id": 277}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 80}, "assignee": {"id": 539}, "organization": {"id": 111}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_WORKER_resource_user_num_resources_10_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 69, "privilege": "admin"}, "organization": {"id": 168, "owner": {"id": 266}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 69}, "assignee": {"id": 572}, "organization": {"id": 168}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_NONE_resource_user_num_resources_0_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 17, "privilege": "admin"}, "organization": {"id": 170, "owner": {"id": 247}, "user": {"role": null}}}, "resource": {"owner": {"id": 17}, "assignee": {"id": 505}, "organization": {"id": 612}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_NONE_resource_user_num_resources_1_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 35, "privilege": "admin"}, "organization": {"id": 158, "owner": {"id": 252}, "user": {"role": null}}}, "resource": {"owner": {"id": 35}, "assignee": {"id": 551}, "organization": {"id": 669}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_NONE_resource_user_num_resources_3_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 83, "privilege": "admin"}, "organization": {"id": 154, "owner": {"id": 298}, "user": {"role": null}}}, "resource": {"owner": {"id": 83}, "assignee": {"id": 590}, "organization": {"id": 660}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_NONE_resource_user_num_resources_10_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 87, "privilege": "admin"}, "organization": {"id": 172, "owner": {"id": 240}, "user": {"role": null}}}, "resource": {"owner": {"id": 87}, "assignee": {"id": 523}, "organization": {"id": 678}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_NONE_resource_user_num_resources_0_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 8, "privilege": "admin"}, "organization": {"id": 144, "owner": {"id": 253}, "user": {"role": null}}}, "resource": {"owner": {"id": 8}, "assignee": {"id": 521}, "organization": {"id": 144}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_NONE_resource_user_num_resources_1_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 5, "privilege": "admin"}, "organization": {"id": 154, "owner": {"id": 207}, "user": {"role": null}}}, "resource": {"owner": {"id": 5}, "assignee": {"id": 543}, "organization": {"id": 154}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_NONE_resource_user_num_resources_3_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 50, "privilege": "admin"}, "organization": {"id": 143, "owner": {"id": 215}, "user": {"role": null}}}, "resource": {"owner": {"id": 50}, "assignee": {"id": 544}, "organization": {"id": 143}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_ADMIN_membership_NONE_resource_user_num_resources_10_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 20, "privilege": "admin"}, "organization": {"id": 183, "owner": {"id": 288}, "user": {"role": null}}}, "resource": {"owner": {"id": 20}, "assignee": {"id": 563}, "organization": {"id": 183}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_OWNER_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 77, "privilege": "business"}, "organization": {"id": 195, "owner": {"id": 77}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 77}, "assignee": {"id": 554}, "organization": {"id": 642}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_OWNER_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 90, "privilege": "business"}, "organization": {"id": 152, "owner": {"id": 90}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 90}, "assignee": {"id": 543}, "organization": {"id": 689}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_OWNER_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 83, "privilege": "business"}, "organization": {"id": 171, "owner": {"id": 83}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 83}, "assignee": {"id": 567}, "organization": {"id": 607}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_OWNER_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 30, "privilege": "business"}, "organization": {"id": 164, "owner": {"id": 30}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 30}, "assignee": {"id": 529}, "organization": {"id": 614}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_OWNER_resource_user_num_resources_0_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 1, "privilege": "business"}, "organization": {"id": 120, "owner": {"id": 1}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 1}, "assignee": {"id": 519}, "organization": {"id": 120}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_OWNER_resource_user_num_resources_1_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 56, "privilege": "business"}, "organization": {"id": 175, "owner": {"id": 56}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 56}, "assignee": {"id": 593}, "organization": {"id": 175}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_OWNER_resource_user_num_resources_3_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 65, "privilege": "business"}, "organization": {"id": 136, "owner": {"id": 65}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 65}, "assignee": {"id": 573}, "organization": {"id": 136}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_OWNER_resource_user_num_resources_10_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 24, "privilege": "business"}, "organization": {"id": 127, "owner": {"id": 24}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 24}, "assignee": {"id": 576}, "organization": {"id": 127}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_MAINTAINER_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 63, "privilege": "business"}, "organization": {"id": 185, "owner": {"id": 293}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 63}, "assignee": {"id": 516}, "organization": {"id": 602}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_MAINTAINER_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 89, "privilege": "business"}, "organization": {"id": 106, "owner": {"id": 202}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 89}, "assignee": {"id": 568}, "organization": {"id": 674}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_MAINTAINER_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 11, "privilege": "business"}, "organization": {"id": 170, "owner": {"id": 287}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 11}, "assignee": {"id": 564}, "organization": {"id": 679}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_MAINTAINER_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 45, "privilege": "business"}, "organization": {"id": 100, "owner": {"id": 282}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 45}, "assignee": {"id": 546}, "organization": {"id": 631}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_MAINTAINER_resource_user_num_resources_0_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 83, "privilege": "business"}, "organization": {"id": 159, "owner": {"id": 250}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 83}, "assignee": {"id": 562}, "organization": {"id": 159}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_MAINTAINER_resource_user_num_resources_1_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 4, "privilege": "business"}, "organization": {"id": 184, "owner": {"id": 219}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 4}, "assignee": {"id": 594}, "organization": {"id": 184}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_MAINTAINER_resource_user_num_resources_3_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 48, "privilege": "business"}, "organization": {"id": 183, "owner": {"id": 266}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 48}, "assignee": {"id": 596}, "organization": {"id": 183}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_MAINTAINER_resource_user_num_resources_10_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 59, "privilege": "business"}, "organization": {"id": 108, "owner": {"id": 205}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 59}, "assignee": {"id": 585}, "organization": {"id": 108}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_SUPERVISOR_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 15, "privilege": "business"}, "organization": {"id": 137, "owner": {"id": 234}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 15}, "assignee": {"id": 599}, "organization": {"id": 660}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_SUPERVISOR_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 59, "privilege": "business"}, "organization": {"id": 118, "owner": {"id": 253}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 59}, "assignee": {"id": 558}, "organization": {"id": 611}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_SUPERVISOR_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 85, "privilege": "business"}, "organization": {"id": 182, "owner": {"id": 209}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 85}, "assignee": {"id": 542}, "organization": {"id": 617}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_SUPERVISOR_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 23, "privilege": "business"}, "organization": {"id": 109, "owner": {"id": 238}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 23}, "assignee": {"id": 578}, "organization": {"id": 606}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_SUPERVISOR_resource_user_num_resources_0_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 30, "privilege": "business"}, "organization": {"id": 166, "owner": {"id": 230}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 30}, "assignee": {"id": 551}, "organization": {"id": 166}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_SUPERVISOR_resource_user_num_resources_1_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 52, "privilege": "business"}, "organization": {"id": 188, "owner": {"id": 261}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 52}, "assignee": {"id": 514}, "organization": {"id": 188}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_SUPERVISOR_resource_user_num_resources_3_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 13, "privilege": "business"}, "organization": {"id": 143, "owner": {"id": 253}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 13}, "assignee": {"id": 549}, "organization": {"id": 143}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_SUPERVISOR_resource_user_num_resources_10_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 49, "privilege": "business"}, "organization": {"id": 199, "owner": {"id": 281}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 49}, "assignee": {"id": 581}, "organization": {"id": 199}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_WORKER_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 75, "privilege": "business"}, "organization": {"id": 171, "owner": {"id": 222}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 75}, "assignee": {"id": 522}, "organization": {"id": 625}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_WORKER_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 32, "privilege": "business"}, "organization": {"id": 109, "owner": {"id": 248}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 32}, "assignee": {"id": 544}, "organization": {"id": 689}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_WORKER_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 79, "privilege": "business"}, "organization": {"id": 150, "owner": {"id": 257}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 79}, "assignee": {"id": 574}, "organization": {"id": 644}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_WORKER_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 58, "privilege": "business"}, "organization": {"id": 166, "owner": {"id": 222}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 58}, "assignee": {"id": 541}, "organization": {"id": 608}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_WORKER_resource_user_num_resources_0_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 30, "privilege": "business"}, "organization": {"id": 176, "owner": {"id": 281}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 30}, "assignee": {"id": 590}, "organization": {"id": 176}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_WORKER_resource_user_num_resources_1_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 90, "privilege": "business"}, "organization": {"id": 179, "owner": {"id": 255}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 90}, "assignee": {"id": 514}, "organization": {"id": 179}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_WORKER_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 68, "privilege": "business"}, "organization": {"id": 132, "owner": {"id": 220}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 68}, "assignee": {"id": 517}, "organization": {"id": 132}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_WORKER_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 10, "privilege": "business"}, "organization": {"id": 137, "owner": {"id": 297}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 10}, "assignee": {"id": 514}, "organization": {"id": 137}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_NONE_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 54, "privilege": "business"}, "organization": {"id": 122, "owner": {"id": 297}, "user": {"role": null}}}, "resource": {"owner": {"id": 54}, "assignee": {"id": 588}, "organization": {"id": 653}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_NONE_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 35, "privilege": "business"}, "organization": {"id": 163, "owner": {"id": 213}, "user": {"role": null}}}, "resource": {"owner": {"id": 35}, "assignee": {"id": 577}, "organization": {"id": 606}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_NONE_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 70, "privilege": "business"}, "organization": {"id": 131, "owner": {"id": 274}, "user": {"role": null}}}, "resource": {"owner": {"id": 70}, "assignee": {"id": 529}, "organization": {"id": 606}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_NONE_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 86, "privilege": "business"}, "organization": {"id": 181, "owner": {"id": 235}, "user": {"role": null}}}, "resource": {"owner": {"id": 86}, "assignee": {"id": 584}, "organization": {"id": 677}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_NONE_resource_user_num_resources_0_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 79, "privilege": "business"}, "organization": {"id": 150, "owner": {"id": 222}, "user": {"role": null}}}, "resource": {"owner": {"id": 79}, "assignee": {"id": 570}, "organization": {"id": 150}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_NONE_resource_user_num_resources_1_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 97, "privilege": "business"}, "organization": {"id": 104, "owner": {"id": 245}, "user": {"role": null}}}, "resource": {"owner": {"id": 97}, "assignee": {"id": 576}, "organization": {"id": 104}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_NONE_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 95, "privilege": "business"}, "organization": {"id": 134, "owner": {"id": 287}, "user": {"role": null}}}, "resource": {"owner": {"id": 95}, "assignee": {"id": 551}, "organization": {"id": 134}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_BUSINESS_membership_NONE_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 38, "privilege": "business"}, "organization": {"id": 123, "owner": {"id": 229}, "user": {"role": null}}}, "resource": {"owner": {"id": 38}, "assignee": {"id": 564}, "organization": {"id": 123}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_OWNER_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 72, "privilege": "user"}, "organization": {"id": 151, "owner": {"id": 72}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 72}, "assignee": {"id": 590}, "organization": {"id": 683}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_OWNER_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 9, "privilege": "user"}, "organization": {"id": 199, "owner": {"id": 9}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 9}, "assignee": {"id": 567}, "organization": {"id": 640}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_OWNER_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 58, "privilege": "user"}, "organization": {"id": 192, "owner": {"id": 58}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 58}, "assignee": {"id": 539}, "organization": {"id": 617}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_OWNER_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 62, "privilege": "user"}, "organization": {"id": 128, "owner": {"id": 62}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 62}, "assignee": {"id": 502}, "organization": {"id": 696}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_OWNER_resource_user_num_resources_0_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 1, "privilege": "user"}, "organization": {"id": 166, "owner": {"id": 1}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 1}, "assignee": {"id": 589}, "organization": {"id": 166}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_OWNER_resource_user_num_resources_1_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 39, "privilege": "user"}, "organization": {"id": 118, "owner": {"id": 39}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 39}, "assignee": {"id": 522}, "organization": {"id": 118}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_OWNER_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 24, "privilege": "user"}, "organization": {"id": 145, "owner": {"id": 24}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 24}, "assignee": {"id": 532}, "organization": {"id": 145}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_OWNER_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 87, "privilege": "user"}, "organization": {"id": 176, "owner": {"id": 87}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 87}, "assignee": {"id": 536}, "organization": {"id": 176}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_MAINTAINER_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 8, "privilege": "user"}, "organization": {"id": 137, "owner": {"id": 208}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 8}, "assignee": {"id": 596}, "organization": {"id": 663}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_MAINTAINER_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 74, "privilege": "user"}, "organization": {"id": 197, "owner": {"id": 258}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 74}, "assignee": {"id": 553}, "organization": {"id": 652}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_MAINTAINER_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 78, "privilege": "user"}, "organization": {"id": 158, "owner": {"id": 290}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 78}, "assignee": {"id": 516}, "organization": {"id": 654}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_MAINTAINER_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 10, "privilege": "user"}, "organization": {"id": 121, "owner": {"id": 219}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 10}, "assignee": {"id": 501}, "organization": {"id": 601}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_MAINTAINER_resource_user_num_resources_0_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 78, "privilege": "user"}, "organization": {"id": 170, "owner": {"id": 270}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 78}, "assignee": {"id": 560}, "organization": {"id": 170}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_MAINTAINER_resource_user_num_resources_1_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 47, "privilege": "user"}, "organization": {"id": 176, "owner": {"id": 232}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 47}, "assignee": {"id": 598}, "organization": {"id": 176}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_MAINTAINER_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 79, "privilege": "user"}, "organization": {"id": 186, "owner": {"id": 297}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 79}, "assignee": {"id": 529}, "organization": {"id": 186}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_MAINTAINER_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 75, "privilege": "user"}, "organization": {"id": 129, "owner": {"id": 280}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 75}, "assignee": {"id": 529}, "organization": {"id": 129}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_SUPERVISOR_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 29, "privilege": "user"}, "organization": {"id": 187, "owner": {"id": 228}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 29}, "assignee": {"id": 540}, "organization": {"id": 670}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_SUPERVISOR_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 41, "privilege": "user"}, "organization": {"id": 154, "owner": {"id": 200}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 41}, "assignee": {"id": 563}, "organization": {"id": 678}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_SUPERVISOR_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 77, "privilege": "user"}, "organization": {"id": 163, "owner": {"id": 239}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 77}, "assignee": {"id": 571}, "organization": {"id": 640}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_SUPERVISOR_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 78, "privilege": "user"}, "organization": {"id": 156, "owner": {"id": 203}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 78}, "assignee": {"id": 544}, "organization": {"id": 602}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_SUPERVISOR_resource_user_num_resources_0_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 24, "privilege": "user"}, "organization": {"id": 165, "owner": {"id": 248}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 24}, "assignee": {"id": 526}, "organization": {"id": 165}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_SUPERVISOR_resource_user_num_resources_1_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 97, "privilege": "user"}, "organization": {"id": 178, "owner": {"id": 256}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 97}, "assignee": {"id": 556}, "organization": {"id": 178}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_SUPERVISOR_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 46, "privilege": "user"}, "organization": {"id": 172, "owner": {"id": 222}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 46}, "assignee": {"id": 571}, "organization": {"id": 172}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_SUPERVISOR_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 59, "privilege": "user"}, "organization": {"id": 148, "owner": {"id": 281}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 59}, "assignee": {"id": 542}, "organization": {"id": 148}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_WORKER_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 30, "privilege": "user"}, "organization": {"id": 111, "owner": {"id": 225}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 30}, "assignee": {"id": 582}, "organization": {"id": 660}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_WORKER_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 96, "privilege": "user"}, "organization": {"id": 105, "owner": {"id": 213}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 96}, "assignee": {"id": 585}, "organization": {"id": 608}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_WORKER_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 89, "privilege": "user"}, "organization": {"id": 168, "owner": {"id": 262}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 89}, "assignee": {"id": 502}, "organization": {"id": 657}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_WORKER_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 18, "privilege": "user"}, "organization": {"id": 166, "owner": {"id": 270}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 18}, "assignee": {"id": 576}, "organization": {"id": 625}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_WORKER_resource_user_num_resources_0_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 8, "privilege": "user"}, "organization": {"id": 140, "owner": {"id": 282}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 8}, "assignee": {"id": 564}, "organization": {"id": 140}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_WORKER_resource_user_num_resources_1_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 11, "privilege": "user"}, "organization": {"id": 195, "owner": {"id": 291}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 11}, "assignee": {"id": 537}, "organization": {"id": 195}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_WORKER_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 68, "privilege": "user"}, "organization": {"id": 138, "owner": {"id": 238}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 68}, "assignee": {"id": 541}, "organization": {"id": 138}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_WORKER_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 59, "privilege": "user"}, "organization": {"id": 110, "owner": {"id": 258}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 59}, "assignee": {"id": 557}, "organization": {"id": 110}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_NONE_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 73, "privilege": "user"}, "organization": {"id": 155, "owner": {"id": 245}, "user": {"role": null}}}, "resource": {"owner": {"id": 73}, "assignee": {"id": 556}, "organization": {"id": 636}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_NONE_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 57, "privilege": "user"}, "organization": {"id": 140, "owner": {"id": 253}, "user": {"role": null}}}, "resource": {"owner": {"id": 57}, "assignee": {"id": 552}, "organization": {"id": 601}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_NONE_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 9, "privilege": "user"}, "organization": {"id": 126, "owner": {"id": 268}, "user": {"role": null}}}, "resource": {"owner": {"id": 9}, "assignee": {"id": 524}, "organization": {"id": 666}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_NONE_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 63, "privilege": "user"}, "organization": {"id": 124, "owner": {"id": 218}, "user": {"role": null}}}, "resource": {"owner": {"id": 63}, "assignee": {"id": 503}, "organization": {"id": 656}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_NONE_resource_user_num_resources_0_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 51, "privilege": "user"}, "organization": {"id": 194, "owner": {"id": 249}, "user": {"role": null}}}, "resource": {"owner": {"id": 51}, "assignee": {"id": 553}, "organization": {"id": 194}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_NONE_resource_user_num_resources_1_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 77, "privilege": "user"}, "organization": {"id": 199, "owner": {"id": 222}, "user": {"role": null}}}, "resource": {"owner": {"id": 77}, "assignee": {"id": 511}, "organization": {"id": 199}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_NONE_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 70, "privilege": "user"}, "organization": {"id": 195, "owner": {"id": 286}, "user": {"role": null}}}, "resource": {"owner": {"id": 70}, "assignee": {"id": 555}, "organization": {"id": 195}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_USER_membership_NONE_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 75, "privilege": "user"}, "organization": {"id": 161, "owner": {"id": 245}, "user": {"role": null}}}, "resource": {"owner": {"id": 75}, "assignee": {"id": 594}, "organization": {"id": 161}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_OWNER_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 90, "privilege": "worker"}, "organization": {"id": 154, "owner": {"id": 90}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 90}, "assignee": {"id": 505}, "organization": {"id": 658}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_OWNER_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 78, "privilege": "worker"}, "organization": {"id": 105, "owner": {"id": 78}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 78}, "assignee": {"id": 581}, "organization": {"id": 635}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_OWNER_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 20, "privilege": "worker"}, "organization": {"id": 178, "owner": {"id": 20}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 20}, "assignee": {"id": 540}, "organization": {"id": 698}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_OWNER_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 18, "privilege": "worker"}, "organization": {"id": 107, "owner": {"id": 18}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 18}, "assignee": {"id": 519}, "organization": {"id": 684}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_OWNER_resource_user_num_resources_0_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 69, "privilege": "worker"}, "organization": {"id": 167, "owner": {"id": 69}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 69}, "assignee": {"id": 578}, "organization": {"id": 167}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_OWNER_resource_user_num_resources_1_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 84, "privilege": "worker"}, "organization": {"id": 110, "owner": {"id": 84}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 84}, "assignee": {"id": 505}, "organization": {"id": 110}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_OWNER_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 43, "privilege": "worker"}, "organization": {"id": 149, "owner": {"id": 43}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 43}, "assignee": {"id": 548}, "organization": {"id": 149}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_OWNER_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 7, "privilege": "worker"}, "organization": {"id": 193, "owner": {"id": 7}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 7}, "assignee": {"id": 514}, "organization": {"id": 193}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_MAINTAINER_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 92, "privilege": "worker"}, "organization": {"id": 104, "owner": {"id": 282}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 92}, "assignee": {"id": 567}, "organization": {"id": 606}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_MAINTAINER_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 40, "privilege": "worker"}, "organization": {"id": 190, "owner": {"id": 278}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 40}, "assignee": {"id": 500}, "organization": {"id": 623}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_MAINTAINER_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 48, "privilege": "worker"}, "organization": {"id": 157, "owner": {"id": 232}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 48}, "assignee": {"id": 562}, "organization": {"id": 671}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_MAINTAINER_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 68, "privilege": "worker"}, "organization": {"id": 149, "owner": {"id": 265}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 68}, "assignee": {"id": 543}, "organization": {"id": 646}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_MAINTAINER_resource_user_num_resources_0_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 50, "privilege": "worker"}, "organization": {"id": 153, "owner": {"id": 233}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 50}, "assignee": {"id": 516}, "organization": {"id": 153}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_MAINTAINER_resource_user_num_resources_1_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 26, "privilege": "worker"}, "organization": {"id": 100, "owner": {"id": 289}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 26}, "assignee": {"id": 525}, "organization": {"id": 100}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_MAINTAINER_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 91, "privilege": "worker"}, "organization": {"id": 159, "owner": {"id": 241}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 91}, "assignee": {"id": 531}, "organization": {"id": 159}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_MAINTAINER_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 89, "privilege": "worker"}, "organization": {"id": 129, "owner": {"id": 266}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 89}, "assignee": {"id": 594}, "organization": {"id": 129}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_SUPERVISOR_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 11, "privilege": "worker"}, "organization": {"id": 197, "owner": {"id": 258}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 11}, "assignee": {"id": 596}, "organization": {"id": 635}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_SUPERVISOR_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 26, "privilege": "worker"}, "organization": {"id": 183, "owner": {"id": 280}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 26}, "assignee": {"id": 532}, "organization": {"id": 607}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_SUPERVISOR_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 25, "privilege": "worker"}, "organization": {"id": 150, "owner": {"id": 219}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 25}, "assignee": {"id": 501}, "organization": {"id": 625}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_SUPERVISOR_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 22, "privilege": "worker"}, "organization": {"id": 171, "owner": {"id": 241}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 22}, "assignee": {"id": 552}, "organization": {"id": 669}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_SUPERVISOR_resource_user_num_resources_0_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 54, "privilege": "worker"}, "organization": {"id": 170, "owner": {"id": 255}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 54}, "assignee": {"id": 531}, "organization": {"id": 170}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_SUPERVISOR_resource_user_num_resources_1_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 42, "privilege": "worker"}, "organization": {"id": 193, "owner": {"id": 299}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 42}, "assignee": {"id": 534}, "organization": {"id": 193}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_SUPERVISOR_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 92, "privilege": "worker"}, "organization": {"id": 135, "owner": {"id": 282}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 92}, "assignee": {"id": 544}, "organization": {"id": 135}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_SUPERVISOR_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 9, "privilege": "worker"}, "organization": {"id": 143, "owner": {"id": 243}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 9}, "assignee": {"id": 529}, "organization": {"id": 143}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_WORKER_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 49, "privilege": "worker"}, "organization": {"id": 170, "owner": {"id": 281}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 49}, "assignee": {"id": 571}, "organization": {"id": 667}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_WORKER_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 44, "privilege": "worker"}, "organization": {"id": 165, "owner": {"id": 241}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 44}, "assignee": {"id": 583}, "organization": {"id": 650}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_WORKER_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 24, "privilege": "worker"}, "organization": {"id": 112, "owner": {"id": 274}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 24}, "assignee": {"id": 590}, "organization": {"id": 686}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_WORKER_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 80, "privilege": "worker"}, "organization": {"id": 106, "owner": {"id": 254}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 80}, "assignee": {"id": 502}, "organization": {"id": 648}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_WORKER_resource_user_num_resources_0_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 50, "privilege": "worker"}, "organization": {"id": 176, "owner": {"id": 219}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 50}, "assignee": {"id": 584}, "organization": {"id": 176}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_WORKER_resource_user_num_resources_1_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 63, "privilege": "worker"}, "organization": {"id": 172, "owner": {"id": 254}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 63}, "assignee": {"id": 511}, "organization": {"id": 172}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_WORKER_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 17, "privilege": "worker"}, "organization": {"id": 174, "owner": {"id": 203}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 17}, "assignee": {"id": 592}, "organization": {"id": 174}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_WORKER_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 66, "privilege": "worker"}, "organization": {"id": 113, "owner": {"id": 268}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 66}, "assignee": {"id": 583}, "organization": {"id": 113}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_NONE_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 61, "privilege": "worker"}, "organization": {"id": 125, "owner": {"id": 266}, "user": {"role": null}}}, "resource": {"owner": {"id": 61}, "assignee": {"id": 539}, "organization": {"id": 662}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_NONE_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 46, "privilege": "worker"}, "organization": {"id": 116, "owner": {"id": 217}, "user": {"role": null}}}, "resource": {"owner": {"id": 46}, "assignee": {"id": 553}, "organization": {"id": 625}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_NONE_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 82, "privilege": "worker"}, "organization": {"id": 143, "owner": {"id": 214}, "user": {"role": null}}}, "resource": {"owner": {"id": 82}, "assignee": {"id": 571}, "organization": {"id": 653}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_NONE_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 72, "privilege": "worker"}, "organization": {"id": 147, "owner": {"id": 248}, "user": {"role": null}}}, "resource": {"owner": {"id": 72}, "assignee": {"id": 530}, "organization": {"id": 608}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_NONE_resource_user_num_resources_0_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 13, "privilege": "worker"}, "organization": {"id": 136, "owner": {"id": 292}, "user": {"role": null}}}, "resource": {"owner": {"id": 13}, "assignee": {"id": 578}, "organization": {"id": 136}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_NONE_resource_user_num_resources_1_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 83, "privilege": "worker"}, "organization": {"id": 174, "owner": {"id": 289}, "user": {"role": null}}}, "resource": {"owner": {"id": 83}, "assignee": {"id": 527}, "organization": {"id": 174}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_NONE_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 19, "privilege": "worker"}, "organization": {"id": 184, "owner": {"id": 220}, "user": {"role": null}}}, "resource": {"owner": {"id": 19}, "assignee": {"id": 562}, "organization": {"id": 184}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_WORKER_membership_NONE_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 21, "privilege": "worker"}, "organization": {"id": 199, "owner": {"id": 227}, "user": {"role": null}}}, "resource": {"owner": {"id": 21}, "assignee": {"id": 575}, "organization": {"id": 199}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_OWNER_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 5, "privilege": "none"}, "organization": {"id": 171, "owner": {"id": 5}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 5}, "assignee": {"id": 557}, "organization": {"id": 674}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_OWNER_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 66, "privilege": "none"}, "organization": {"id": 135, "owner": {"id": 66}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 66}, "assignee": {"id": 533}, "organization": {"id": 675}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_OWNER_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 1, "privilege": "none"}, "organization": {"id": 154, "owner": {"id": 1}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 1}, "assignee": {"id": 533}, "organization": {"id": 665}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_OWNER_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 34, "privilege": "none"}, "organization": {"id": 133, "owner": {"id": 34}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 34}, "assignee": {"id": 508}, "organization": {"id": 605}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_OWNER_resource_user_num_resources_0_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 92, "privilege": "none"}, "organization": {"id": 123, "owner": {"id": 92}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 92}, "assignee": {"id": 553}, "organization": {"id": 123}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_OWNER_resource_user_num_resources_1_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 15, "privilege": "none"}, "organization": {"id": 195, "owner": {"id": 15}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 15}, "assignee": {"id": 599}, "organization": {"id": 195}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_OWNER_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 64, "privilege": "none"}, "organization": {"id": 112, "owner": {"id": 64}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 64}, "assignee": {"id": 537}, "organization": {"id": 112}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_OWNER_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 7, "privilege": "none"}, "organization": {"id": 169, "owner": {"id": 7}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 7}, "assignee": {"id": 505}, "organization": {"id": 169}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_MAINTAINER_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 79, "privilege": "none"}, "organization": {"id": 147, "owner": {"id": 280}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 79}, "assignee": {"id": 507}, "organization": {"id": 674}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_MAINTAINER_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 71, "privilege": "none"}, "organization": {"id": 140, "owner": {"id": 240}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 71}, "assignee": {"id": 580}, "organization": {"id": 675}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_MAINTAINER_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 76, "privilege": "none"}, "organization": {"id": 144, "owner": {"id": 234}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 76}, "assignee": {"id": 570}, "organization": {"id": 606}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_MAINTAINER_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 9, "privilege": "none"}, "organization": {"id": 165, "owner": {"id": 279}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 9}, "assignee": {"id": 558}, "organization": {"id": 688}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_MAINTAINER_resource_user_num_resources_0_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 66, "privilege": "none"}, "organization": {"id": 160, "owner": {"id": 214}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 66}, "assignee": {"id": 578}, "organization": {"id": 160}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_MAINTAINER_resource_user_num_resources_1_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 1, "privilege": "none"}, "organization": {"id": 114, "owner": {"id": 266}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 1}, "assignee": {"id": 516}, "organization": {"id": 114}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_MAINTAINER_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 6, "privilege": "none"}, "organization": {"id": 188, "owner": {"id": 261}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 6}, "assignee": {"id": 555}, "organization": {"id": 188}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_MAINTAINER_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 30, "privilege": "none"}, "organization": {"id": 118, "owner": {"id": 282}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 30}, "assignee": {"id": 511}, "organization": {"id": 118}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_SUPERVISOR_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 73, "privilege": "none"}, "organization": {"id": 135, "owner": {"id": 231}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 73}, "assignee": {"id": 526}, "organization": {"id": 655}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_SUPERVISOR_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 40, "privilege": "none"}, "organization": {"id": 191, "owner": {"id": 224}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 40}, "assignee": {"id": 506}, "organization": {"id": 694}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_SUPERVISOR_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 69, "privilege": "none"}, "organization": {"id": 190, "owner": {"id": 236}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 69}, "assignee": {"id": 508}, "organization": {"id": 617}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_SUPERVISOR_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 81, "privilege": "none"}, "organization": {"id": 181, "owner": {"id": 254}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 81}, "assignee": {"id": 545}, "organization": {"id": 635}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_SUPERVISOR_resource_user_num_resources_0_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 85, "privilege": "none"}, "organization": {"id": 110, "owner": {"id": 264}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 85}, "assignee": {"id": 598}, "organization": {"id": 110}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_SUPERVISOR_resource_user_num_resources_1_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 61, "privilege": "none"}, "organization": {"id": 143, "owner": {"id": 207}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 61}, "assignee": {"id": 561}, "organization": {"id": 143}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_SUPERVISOR_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 33, "privilege": "none"}, "organization": {"id": 193, "owner": {"id": 220}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 33}, "assignee": {"id": 552}, "organization": {"id": 193}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_SUPERVISOR_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 12, "privilege": "none"}, "organization": {"id": 179, "owner": {"id": 235}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 12}, "assignee": {"id": 540}, "organization": {"id": 179}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_WORKER_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 73, "privilege": "none"}, "organization": {"id": 145, "owner": {"id": 209}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 73}, "assignee": {"id": 540}, "organization": {"id": 683}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_WORKER_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 45, "privilege": "none"}, "organization": {"id": 148, "owner": {"id": 247}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 45}, "assignee": {"id": 577}, "organization": {"id": 602}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_WORKER_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 60, "privilege": "none"}, "organization": {"id": 152, "owner": {"id": 266}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 60}, "assignee": {"id": 557}, "organization": {"id": 693}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_WORKER_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 67, "privilege": "none"}, "organization": {"id": 106, "owner": {"id": 265}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 67}, "assignee": {"id": 577}, "organization": {"id": 633}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_WORKER_resource_user_num_resources_0_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 74, "privilege": "none"}, "organization": {"id": 196, "owner": {"id": 257}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 74}, "assignee": {"id": 504}, "organization": {"id": 196}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_WORKER_resource_user_num_resources_1_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 42, "privilege": "none"}, "organization": {"id": 198, "owner": {"id": 246}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 42}, "assignee": {"id": 548}, "organization": {"id": 198}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_WORKER_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 98, "privilege": "none"}, "organization": {"id": 114, "owner": {"id": 272}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 98}, "assignee": {"id": 532}, "organization": {"id": 114}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_WORKER_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 56, "privilege": "none"}, "organization": {"id": 157, "owner": {"id": 217}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 56}, "assignee": {"id": 550}, "organization": {"id": 157}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_NONE_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 35, "privilege": "none"}, "organization": {"id": 119, "owner": {"id": 226}, "user": {"role": null}}}, "resource": {"owner": {"id": 35}, "assignee": {"id": 579}, "organization": {"id": 646}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_NONE_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 75, "privilege": "none"}, "organization": {"id": 128, "owner": {"id": 212}, "user": {"role": null}}}, "resource": {"owner": {"id": 75}, "assignee": {"id": 592}, "organization": {"id": 698}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_NONE_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 11, "privilege": "none"}, "organization": {"id": 116, "owner": {"id": 268}, "user": {"role": null}}}, "resource": {"owner": {"id": 11}, "assignee": {"id": 567}, "organization": {"id": 619}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_NONE_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 52, "privilege": "none"}, "organization": {"id": 189, "owner": {"id": 230}, "user": {"role": null}}}, "resource": {"owner": {"id": 52}, "assignee": {"id": 583}, "organization": {"id": 648}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_NONE_resource_user_num_resources_0_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 74, "privilege": "none"}, "organization": {"id": 151, "owner": {"id": 214}, "user": {"role": null}}}, "resource": {"owner": {"id": 74}, "assignee": {"id": 577}, "organization": {"id": 151}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_NONE_resource_user_num_resources_1_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 92, "privilege": "none"}, "organization": {"id": 119, "owner": {"id": 263}, "user": {"role": null}}}, "resource": {"owner": {"id": 92}, "assignee": {"id": 556}, "organization": {"id": 119}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_NONE_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 10, "privilege": "none"}, "organization": {"id": 166, "owner": {"id": 295}, "user": {"role": null}}}, "resource": {"owner": {"id": 10}, "assignee": {"id": 500}, "organization": {"id": 166}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_OWNER_privilege_NONE_membership_NONE_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 35, "privilege": "none"}, "organization": {"id": 167, "owner": {"id": 209}, "user": {"role": null}}}, "resource": {"owner": {"id": 35}, "assignee": {"id": 583}, "organization": {"id": 167}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_OWNER_resource_user_num_resources_0_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 61, "privilege": "admin"}, "organization": {"id": 180, "owner": {"id": 61}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 443}, "assignee": {"id": 61}, "organization": {"id": 689}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_OWNER_resource_user_num_resources_1_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 43, "privilege": "admin"}, "organization": {"id": 135, "owner": {"id": 43}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 432}, "assignee": {"id": 43}, "organization": {"id": 694}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_OWNER_resource_user_num_resources_3_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 21, "privilege": "admin"}, "organization": {"id": 172, "owner": {"id": 21}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 466}, "assignee": {"id": 21}, "organization": {"id": 607}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_OWNER_resource_user_num_resources_10_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 6, "privilege": "admin"}, "organization": {"id": 128, "owner": {"id": 6}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 471}, "assignee": {"id": 6}, "organization": {"id": 692}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_OWNER_resource_user_num_resources_0_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 20, "privilege": "admin"}, "organization": {"id": 199, "owner": {"id": 20}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 495}, "assignee": {"id": 20}, "organization": {"id": 199}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_OWNER_resource_user_num_resources_1_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 37, "privilege": "admin"}, "organization": {"id": 178, "owner": {"id": 37}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 481}, "assignee": {"id": 37}, "organization": {"id": 178}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_OWNER_resource_user_num_resources_3_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 97, "privilege": "admin"}, "organization": {"id": 183, "owner": {"id": 97}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 430}, "assignee": {"id": 97}, "organization": {"id": 183}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_OWNER_resource_user_num_resources_10_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 52, "privilege": "admin"}, "organization": {"id": 147, "owner": {"id": 52}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 426}, "assignee": {"id": 52}, "organization": {"id": 147}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_MAINTAINER_resource_user_num_resources_0_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 33, "privilege": "admin"}, "organization": {"id": 147, "owner": {"id": 227}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 411}, "assignee": {"id": 33}, "organization": {"id": 668}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_MAINTAINER_resource_user_num_resources_1_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 12, "privilege": "admin"}, "organization": {"id": 133, "owner": {"id": 255}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 498}, "assignee": {"id": 12}, "organization": {"id": 616}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_MAINTAINER_resource_user_num_resources_3_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 61, "privilege": "admin"}, "organization": {"id": 172, "owner": {"id": 221}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 449}, "assignee": {"id": 61}, "organization": {"id": 637}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_MAINTAINER_resource_user_num_resources_10_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 3, "privilege": "admin"}, "organization": {"id": 172, "owner": {"id": 295}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 445}, "assignee": {"id": 3}, "organization": {"id": 638}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_MAINTAINER_resource_user_num_resources_0_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 1, "privilege": "admin"}, "organization": {"id": 179, "owner": {"id": 277}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 468}, "assignee": {"id": 1}, "organization": {"id": 179}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_MAINTAINER_resource_user_num_resources_1_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 90, "privilege": "admin"}, "organization": {"id": 124, "owner": {"id": 219}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 432}, "assignee": {"id": 90}, "organization": {"id": 124}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_MAINTAINER_resource_user_num_resources_3_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 53, "privilege": "admin"}, "organization": {"id": 146, "owner": {"id": 212}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 435}, "assignee": {"id": 53}, "organization": {"id": 146}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_MAINTAINER_resource_user_num_resources_10_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 0, "privilege": "admin"}, "organization": {"id": 144, "owner": {"id": 272}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 433}, "assignee": {"id": 0}, "organization": {"id": 144}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_SUPERVISOR_resource_user_num_resources_0_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 61, "privilege": "admin"}, "organization": {"id": 183, "owner": {"id": 245}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 494}, "assignee": {"id": 61}, "organization": {"id": 692}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_SUPERVISOR_resource_user_num_resources_1_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 28, "privilege": "admin"}, "organization": {"id": 181, "owner": {"id": 231}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 492}, "assignee": {"id": 28}, "organization": {"id": 637}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_SUPERVISOR_resource_user_num_resources_3_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 74, "privilege": "admin"}, "organization": {"id": 125, "owner": {"id": 247}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 444}, "assignee": {"id": 74}, "organization": {"id": 658}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_SUPERVISOR_resource_user_num_resources_10_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 97, "privilege": "admin"}, "organization": {"id": 136, "owner": {"id": 210}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 416}, "assignee": {"id": 97}, "organization": {"id": 601}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_SUPERVISOR_resource_user_num_resources_0_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 49, "privilege": "admin"}, "organization": {"id": 144, "owner": {"id": 257}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 403}, "assignee": {"id": 49}, "organization": {"id": 144}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_SUPERVISOR_resource_user_num_resources_1_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 1, "privilege": "admin"}, "organization": {"id": 112, "owner": {"id": 222}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 431}, "assignee": {"id": 1}, "organization": {"id": 112}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_SUPERVISOR_resource_user_num_resources_3_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 52, "privilege": "admin"}, "organization": {"id": 119, "owner": {"id": 241}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 466}, "assignee": {"id": 52}, "organization": {"id": 119}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_SUPERVISOR_resource_user_num_resources_10_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 62, "privilege": "admin"}, "organization": {"id": 112, "owner": {"id": 256}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 416}, "assignee": {"id": 62}, "organization": {"id": 112}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_WORKER_resource_user_num_resources_0_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 56, "privilege": "admin"}, "organization": {"id": 186, "owner": {"id": 243}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 429}, "assignee": {"id": 56}, "organization": {"id": 663}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_WORKER_resource_user_num_resources_1_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 68, "privilege": "admin"}, "organization": {"id": 165, "owner": {"id": 244}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 484}, "assignee": {"id": 68}, "organization": {"id": 630}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_WORKER_resource_user_num_resources_3_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 56, "privilege": "admin"}, "organization": {"id": 178, "owner": {"id": 219}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 487}, "assignee": {"id": 56}, "organization": {"id": 629}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_WORKER_resource_user_num_resources_10_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 78, "privilege": "admin"}, "organization": {"id": 162, "owner": {"id": 250}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 463}, "assignee": {"id": 78}, "organization": {"id": 638}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_WORKER_resource_user_num_resources_0_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 40, "privilege": "admin"}, "organization": {"id": 113, "owner": {"id": 264}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 437}, "assignee": {"id": 40}, "organization": {"id": 113}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_WORKER_resource_user_num_resources_1_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 69, "privilege": "admin"}, "organization": {"id": 159, "owner": {"id": 239}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 414}, "assignee": {"id": 69}, "organization": {"id": 159}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_WORKER_resource_user_num_resources_3_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 95, "privilege": "admin"}, "organization": {"id": 132, "owner": {"id": 206}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 470}, "assignee": {"id": 95}, "organization": {"id": 132}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_WORKER_resource_user_num_resources_10_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 83, "privilege": "admin"}, "organization": {"id": 196, "owner": {"id": 216}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 480}, "assignee": {"id": 83}, "organization": {"id": 196}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_NONE_resource_user_num_resources_0_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 9, "privilege": "admin"}, "organization": {"id": 138, "owner": {"id": 225}, "user": {"role": null}}}, "resource": {"owner": {"id": 477}, "assignee": {"id": 9}, "organization": {"id": 622}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_NONE_resource_user_num_resources_1_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 70, "privilege": "admin"}, "organization": {"id": 157, "owner": {"id": 298}, "user": {"role": null}}}, "resource": {"owner": {"id": 486}, "assignee": {"id": 70}, "organization": {"id": 691}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_NONE_resource_user_num_resources_3_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 68, "privilege": "admin"}, "organization": {"id": 137, "owner": {"id": 249}, "user": {"role": null}}}, "resource": {"owner": {"id": 484}, "assignee": {"id": 68}, "organization": {"id": 692}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_NONE_resource_user_num_resources_10_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 36, "privilege": "admin"}, "organization": {"id": 154, "owner": {"id": 236}, "user": {"role": null}}}, "resource": {"owner": {"id": 489}, "assignee": {"id": 36}, "organization": {"id": 651}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_NONE_resource_user_num_resources_0_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 17, "privilege": "admin"}, "organization": {"id": 105, "owner": {"id": 265}, "user": {"role": null}}}, "resource": {"owner": {"id": 447}, "assignee": {"id": 17}, "organization": {"id": 105}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_NONE_resource_user_num_resources_1_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 12, "privilege": "admin"}, "organization": {"id": 194, "owner": {"id": 254}, "user": {"role": null}}}, "resource": {"owner": {"id": 411}, "assignee": {"id": 12}, "organization": {"id": 194}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_NONE_resource_user_num_resources_3_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 6, "privilege": "admin"}, "organization": {"id": 194, "owner": {"id": 260}, "user": {"role": null}}}, "resource": {"owner": {"id": 465}, "assignee": {"id": 6}, "organization": {"id": 194}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_ADMIN_membership_NONE_resource_user_num_resources_10_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 55, "privilege": "admin"}, "organization": {"id": 104, "owner": {"id": 271}, "user": {"role": null}}}, "resource": {"owner": {"id": 410}, "assignee": {"id": 55}, "organization": {"id": 104}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_OWNER_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 24, "privilege": "business"}, "organization": {"id": 129, "owner": {"id": 24}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 468}, "assignee": {"id": 24}, "organization": {"id": 656}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_OWNER_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 14, "privilege": "business"}, "organization": {"id": 180, "owner": {"id": 14}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 417}, "assignee": {"id": 14}, "organization": {"id": 679}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_OWNER_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 47, "privilege": "business"}, "organization": {"id": 115, "owner": {"id": 47}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 419}, "assignee": {"id": 47}, "organization": {"id": 602}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_OWNER_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 11, "privilege": "business"}, "organization": {"id": 103, "owner": {"id": 11}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 485}, "assignee": {"id": 11}, "organization": {"id": 600}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_OWNER_resource_user_num_resources_0_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 60, "privilege": "business"}, "organization": {"id": 193, "owner": {"id": 60}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 482}, "assignee": {"id": 60}, "organization": {"id": 193}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_OWNER_resource_user_num_resources_1_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 69, "privilege": "business"}, "organization": {"id": 105, "owner": {"id": 69}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 489}, "assignee": {"id": 69}, "organization": {"id": 105}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_OWNER_resource_user_num_resources_3_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 38, "privilege": "business"}, "organization": {"id": 122, "owner": {"id": 38}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 418}, "assignee": {"id": 38}, "organization": {"id": 122}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_OWNER_resource_user_num_resources_10_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 26, "privilege": "business"}, "organization": {"id": 147, "owner": {"id": 26}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 450}, "assignee": {"id": 26}, "organization": {"id": 147}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_MAINTAINER_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 82, "privilege": "business"}, "organization": {"id": 117, "owner": {"id": 247}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 446}, "assignee": {"id": 82}, "organization": {"id": 683}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_MAINTAINER_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 93, "privilege": "business"}, "organization": {"id": 197, "owner": {"id": 221}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 434}, "assignee": {"id": 93}, "organization": {"id": 608}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_MAINTAINER_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 63, "privilege": "business"}, "organization": {"id": 195, "owner": {"id": 276}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 436}, "assignee": {"id": 63}, "organization": {"id": 672}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_MAINTAINER_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 73, "privilege": "business"}, "organization": {"id": 171, "owner": {"id": 285}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 439}, "assignee": {"id": 73}, "organization": {"id": 660}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_MAINTAINER_resource_user_num_resources_0_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 87, "privilege": "business"}, "organization": {"id": 106, "owner": {"id": 276}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 446}, "assignee": {"id": 87}, "organization": {"id": 106}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_MAINTAINER_resource_user_num_resources_1_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 21, "privilege": "business"}, "organization": {"id": 148, "owner": {"id": 285}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 493}, "assignee": {"id": 21}, "organization": {"id": 148}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_MAINTAINER_resource_user_num_resources_3_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 25, "privilege": "business"}, "organization": {"id": 102, "owner": {"id": 271}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 410}, "assignee": {"id": 25}, "organization": {"id": 102}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_MAINTAINER_resource_user_num_resources_10_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 37, "privilege": "business"}, "organization": {"id": 121, "owner": {"id": 262}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 404}, "assignee": {"id": 37}, "organization": {"id": 121}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_SUPERVISOR_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 58, "privilege": "business"}, "organization": {"id": 109, "owner": {"id": 270}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 444}, "assignee": {"id": 58}, "organization": {"id": 648}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_SUPERVISOR_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 70, "privilege": "business"}, "organization": {"id": 186, "owner": {"id": 237}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 493}, "assignee": {"id": 70}, "organization": {"id": 640}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_SUPERVISOR_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 55, "privilege": "business"}, "organization": {"id": 174, "owner": {"id": 292}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 487}, "assignee": {"id": 55}, "organization": {"id": 600}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_SUPERVISOR_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 49, "privilege": "business"}, "organization": {"id": 122, "owner": {"id": 235}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 403}, "assignee": {"id": 49}, "organization": {"id": 650}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_SUPERVISOR_resource_user_num_resources_0_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 93, "privilege": "business"}, "organization": {"id": 132, "owner": {"id": 212}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 473}, "assignee": {"id": 93}, "organization": {"id": 132}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_SUPERVISOR_resource_user_num_resources_1_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 82, "privilege": "business"}, "organization": {"id": 180, "owner": {"id": 264}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 437}, "assignee": {"id": 82}, "organization": {"id": 180}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_SUPERVISOR_resource_user_num_resources_3_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 84, "privilege": "business"}, "organization": {"id": 148, "owner": {"id": 256}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 425}, "assignee": {"id": 84}, "organization": {"id": 148}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_SUPERVISOR_resource_user_num_resources_10_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 92, "privilege": "business"}, "organization": {"id": 128, "owner": {"id": 240}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 452}, "assignee": {"id": 92}, "organization": {"id": 128}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_WORKER_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 11, "privilege": "business"}, "organization": {"id": 163, "owner": {"id": 241}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 412}, "assignee": {"id": 11}, "organization": {"id": 668}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_WORKER_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 34, "privilege": "business"}, "organization": {"id": 136, "owner": {"id": 247}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 426}, "assignee": {"id": 34}, "organization": {"id": 695}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_WORKER_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 55, "privilege": "business"}, "organization": {"id": 147, "owner": {"id": 297}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 408}, "assignee": {"id": 55}, "organization": {"id": 605}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_WORKER_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 82, "privilege": "business"}, "organization": {"id": 106, "owner": {"id": 232}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 438}, "assignee": {"id": 82}, "organization": {"id": 680}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_WORKER_resource_user_num_resources_0_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 39, "privilege": "business"}, "organization": {"id": 144, "owner": {"id": 282}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 493}, "assignee": {"id": 39}, "organization": {"id": 144}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_WORKER_resource_user_num_resources_1_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 73, "privilege": "business"}, "organization": {"id": 151, "owner": {"id": 234}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 442}, "assignee": {"id": 73}, "organization": {"id": 151}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_WORKER_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 91, "privilege": "business"}, "organization": {"id": 135, "owner": {"id": 270}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 450}, "assignee": {"id": 91}, "organization": {"id": 135}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_WORKER_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 6, "privilege": "business"}, "organization": {"id": 151, "owner": {"id": 222}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 496}, "assignee": {"id": 6}, "organization": {"id": 151}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_NONE_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 77, "privilege": "business"}, "organization": {"id": 101, "owner": {"id": 262}, "user": {"role": null}}}, "resource": {"owner": {"id": 488}, "assignee": {"id": 77}, "organization": {"id": 613}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_NONE_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 78, "privilege": "business"}, "organization": {"id": 131, "owner": {"id": 245}, "user": {"role": null}}}, "resource": {"owner": {"id": 400}, "assignee": {"id": 78}, "organization": {"id": 675}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_NONE_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 5, "privilege": "business"}, "organization": {"id": 188, "owner": {"id": 285}, "user": {"role": null}}}, "resource": {"owner": {"id": 479}, "assignee": {"id": 5}, "organization": {"id": 656}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_NONE_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 57, "privilege": "business"}, "organization": {"id": 127, "owner": {"id": 266}, "user": {"role": null}}}, "resource": {"owner": {"id": 409}, "assignee": {"id": 57}, "organization": {"id": 659}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_NONE_resource_user_num_resources_0_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 11, "privilege": "business"}, "organization": {"id": 134, "owner": {"id": 232}, "user": {"role": null}}}, "resource": {"owner": {"id": 429}, "assignee": {"id": 11}, "organization": {"id": 134}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_NONE_resource_user_num_resources_1_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 87, "privilege": "business"}, "organization": {"id": 156, "owner": {"id": 244}, "user": {"role": null}}}, "resource": {"owner": {"id": 407}, "assignee": {"id": 87}, "organization": {"id": 156}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_NONE_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 67, "privilege": "business"}, "organization": {"id": 103, "owner": {"id": 221}, "user": {"role": null}}}, "resource": {"owner": {"id": 425}, "assignee": {"id": 67}, "organization": {"id": 103}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_BUSINESS_membership_NONE_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 53, "privilege": "business"}, "organization": {"id": 119, "owner": {"id": 203}, "user": {"role": null}}}, "resource": {"owner": {"id": 432}, "assignee": {"id": 53}, "organization": {"id": 119}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_OWNER_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 17, "privilege": "user"}, "organization": {"id": 146, "owner": {"id": 17}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 447}, "assignee": {"id": 17}, "organization": {"id": 659}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_OWNER_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 18, "privilege": "user"}, "organization": {"id": 140, "owner": {"id": 18}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 450}, "assignee": {"id": 18}, "organization": {"id": 666}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_OWNER_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 33, "privilege": "user"}, "organization": {"id": 195, "owner": {"id": 33}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 440}, "assignee": {"id": 33}, "organization": {"id": 672}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_OWNER_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 59, "privilege": "user"}, "organization": {"id": 190, "owner": {"id": 59}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 443}, "assignee": {"id": 59}, "organization": {"id": 684}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_OWNER_resource_user_num_resources_0_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 82, "privilege": "user"}, "organization": {"id": 148, "owner": {"id": 82}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 425}, "assignee": {"id": 82}, "organization": {"id": 148}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_OWNER_resource_user_num_resources_1_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 93, "privilege": "user"}, "organization": {"id": 179, "owner": {"id": 93}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 437}, "assignee": {"id": 93}, "organization": {"id": 179}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_OWNER_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 7, "privilege": "user"}, "organization": {"id": 190, "owner": {"id": 7}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 420}, "assignee": {"id": 7}, "organization": {"id": 190}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_OWNER_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 11, "privilege": "user"}, "organization": {"id": 183, "owner": {"id": 11}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 423}, "assignee": {"id": 11}, "organization": {"id": 183}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_MAINTAINER_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 91, "privilege": "user"}, "organization": {"id": 170, "owner": {"id": 289}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 466}, "assignee": {"id": 91}, "organization": {"id": 688}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_MAINTAINER_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 19, "privilege": "user"}, "organization": {"id": 199, "owner": {"id": 261}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 422}, "assignee": {"id": 19}, "organization": {"id": 661}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_MAINTAINER_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 87, "privilege": "user"}, "organization": {"id": 198, "owner": {"id": 282}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 404}, "assignee": {"id": 87}, "organization": {"id": 635}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_MAINTAINER_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 89, "privilege": "user"}, "organization": {"id": 135, "owner": {"id": 263}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 431}, "assignee": {"id": 89}, "organization": {"id": 698}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_MAINTAINER_resource_user_num_resources_0_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 98, "privilege": "user"}, "organization": {"id": 164, "owner": {"id": 205}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 426}, "assignee": {"id": 98}, "organization": {"id": 164}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_MAINTAINER_resource_user_num_resources_1_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 82, "privilege": "user"}, "organization": {"id": 107, "owner": {"id": 265}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 421}, "assignee": {"id": 82}, "organization": {"id": 107}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_MAINTAINER_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 11, "privilege": "user"}, "organization": {"id": 191, "owner": {"id": 267}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 493}, "assignee": {"id": 11}, "organization": {"id": 191}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_MAINTAINER_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 94, "privilege": "user"}, "organization": {"id": 120, "owner": {"id": 216}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 409}, "assignee": {"id": 94}, "organization": {"id": 120}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_SUPERVISOR_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 42, "privilege": "user"}, "organization": {"id": 108, "owner": {"id": 256}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 464}, "assignee": {"id": 42}, "organization": {"id": 680}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_SUPERVISOR_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 96, "privilege": "user"}, "organization": {"id": 102, "owner": {"id": 249}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 491}, "assignee": {"id": 96}, "organization": {"id": 689}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_SUPERVISOR_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 33, "privilege": "user"}, "organization": {"id": 136, "owner": {"id": 215}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 471}, "assignee": {"id": 33}, "organization": {"id": 611}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_SUPERVISOR_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 72, "privilege": "user"}, "organization": {"id": 167, "owner": {"id": 299}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 419}, "assignee": {"id": 72}, "organization": {"id": 699}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_SUPERVISOR_resource_user_num_resources_0_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 53, "privilege": "user"}, "organization": {"id": 112, "owner": {"id": 291}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 492}, "assignee": {"id": 53}, "organization": {"id": 112}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_SUPERVISOR_resource_user_num_resources_1_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 23, "privilege": "user"}, "organization": {"id": 183, "owner": {"id": 200}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 433}, "assignee": {"id": 23}, "organization": {"id": 183}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_SUPERVISOR_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 3, "privilege": "user"}, "organization": {"id": 189, "owner": {"id": 241}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 476}, "assignee": {"id": 3}, "organization": {"id": 189}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_SUPERVISOR_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 50, "privilege": "user"}, "organization": {"id": 103, "owner": {"id": 224}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 497}, "assignee": {"id": 50}, "organization": {"id": 103}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_WORKER_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 70, "privilege": "user"}, "organization": {"id": 195, "owner": {"id": 257}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 476}, "assignee": {"id": 70}, "organization": {"id": 617}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_WORKER_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 40, "privilege": "user"}, "organization": {"id": 162, "owner": {"id": 203}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 453}, "assignee": {"id": 40}, "organization": {"id": 609}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_WORKER_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 87, "privilege": "user"}, "organization": {"id": 110, "owner": {"id": 259}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 473}, "assignee": {"id": 87}, "organization": {"id": 696}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_WORKER_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 93, "privilege": "user"}, "organization": {"id": 185, "owner": {"id": 246}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 493}, "assignee": {"id": 93}, "organization": {"id": 617}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_WORKER_resource_user_num_resources_0_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 3, "privilege": "user"}, "organization": {"id": 191, "owner": {"id": 212}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 414}, "assignee": {"id": 3}, "organization": {"id": 191}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_WORKER_resource_user_num_resources_1_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 95, "privilege": "user"}, "organization": {"id": 107, "owner": {"id": 264}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 494}, "assignee": {"id": 95}, "organization": {"id": 107}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_WORKER_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 64, "privilege": "user"}, "organization": {"id": 166, "owner": {"id": 267}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 448}, "assignee": {"id": 64}, "organization": {"id": 166}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_WORKER_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 86, "privilege": "user"}, "organization": {"id": 142, "owner": {"id": 266}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 476}, "assignee": {"id": 86}, "organization": {"id": 142}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_NONE_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 70, "privilege": "user"}, "organization": {"id": 149, "owner": {"id": 203}, "user": {"role": null}}}, "resource": {"owner": {"id": 448}, "assignee": {"id": 70}, "organization": {"id": 608}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_NONE_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 95, "privilege": "user"}, "organization": {"id": 129, "owner": {"id": 275}, "user": {"role": null}}}, "resource": {"owner": {"id": 430}, "assignee": {"id": 95}, "organization": {"id": 611}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_NONE_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 64, "privilege": "user"}, "organization": {"id": 184, "owner": {"id": 212}, "user": {"role": null}}}, "resource": {"owner": {"id": 407}, "assignee": {"id": 64}, "organization": {"id": 642}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_NONE_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 4, "privilege": "user"}, "organization": {"id": 112, "owner": {"id": 251}, "user": {"role": null}}}, "resource": {"owner": {"id": 444}, "assignee": {"id": 4}, "organization": {"id": 601}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_NONE_resource_user_num_resources_0_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 12, "privilege": "user"}, "organization": {"id": 122, "owner": {"id": 228}, "user": {"role": null}}}, "resource": {"owner": {"id": 439}, "assignee": {"id": 12}, "organization": {"id": 122}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_NONE_resource_user_num_resources_1_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 33, "privilege": "user"}, "organization": {"id": 117, "owner": {"id": 244}, "user": {"role": null}}}, "resource": {"owner": {"id": 481}, "assignee": {"id": 33}, "organization": {"id": 117}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_NONE_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 45, "privilege": "user"}, "organization": {"id": 114, "owner": {"id": 261}, "user": {"role": null}}}, "resource": {"owner": {"id": 483}, "assignee": {"id": 45}, "organization": {"id": 114}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_USER_membership_NONE_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 89, "privilege": "user"}, "organization": {"id": 119, "owner": {"id": 276}, "user": {"role": null}}}, "resource": {"owner": {"id": 460}, "assignee": {"id": 89}, "organization": {"id": 119}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_OWNER_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 80, "privilege": "worker"}, "organization": {"id": 149, "owner": {"id": 80}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 441}, "assignee": {"id": 80}, "organization": {"id": 632}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_OWNER_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 82, "privilege": "worker"}, "organization": {"id": 119, "owner": {"id": 82}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 483}, "assignee": {"id": 82}, "organization": {"id": 639}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_OWNER_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 71, "privilege": "worker"}, "organization": {"id": 164, "owner": {"id": 71}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 414}, "assignee": {"id": 71}, "organization": {"id": 691}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_OWNER_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 76, "privilege": "worker"}, "organization": {"id": 115, "owner": {"id": 76}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 405}, "assignee": {"id": 76}, "organization": {"id": 618}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_OWNER_resource_user_num_resources_0_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 61, "privilege": "worker"}, "organization": {"id": 141, "owner": {"id": 61}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 473}, "assignee": {"id": 61}, "organization": {"id": 141}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_OWNER_resource_user_num_resources_1_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 77, "privilege": "worker"}, "organization": {"id": 143, "owner": {"id": 77}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 411}, "assignee": {"id": 77}, "organization": {"id": 143}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_OWNER_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 88, "privilege": "worker"}, "organization": {"id": 129, "owner": {"id": 88}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 427}, "assignee": {"id": 88}, "organization": {"id": 129}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_OWNER_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 41, "privilege": "worker"}, "organization": {"id": 125, "owner": {"id": 41}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 499}, "assignee": {"id": 41}, "organization": {"id": 125}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_MAINTAINER_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 90, "privilege": "worker"}, "organization": {"id": 104, "owner": {"id": 284}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 476}, "assignee": {"id": 90}, "organization": {"id": 681}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_MAINTAINER_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 88, "privilege": "worker"}, "organization": {"id": 191, "owner": {"id": 232}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 436}, "assignee": {"id": 88}, "organization": {"id": 685}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_MAINTAINER_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 35, "privilege": "worker"}, "organization": {"id": 105, "owner": {"id": 227}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 428}, "assignee": {"id": 35}, "organization": {"id": 609}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_MAINTAINER_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 39, "privilege": "worker"}, "organization": {"id": 131, "owner": {"id": 291}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 465}, "assignee": {"id": 39}, "organization": {"id": 630}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_MAINTAINER_resource_user_num_resources_0_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 31, "privilege": "worker"}, "organization": {"id": 186, "owner": {"id": 285}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 428}, "assignee": {"id": 31}, "organization": {"id": 186}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_MAINTAINER_resource_user_num_resources_1_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 71, "privilege": "worker"}, "organization": {"id": 169, "owner": {"id": 222}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 417}, "assignee": {"id": 71}, "organization": {"id": 169}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_MAINTAINER_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 91, "privilege": "worker"}, "organization": {"id": 131, "owner": {"id": 298}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 444}, "assignee": {"id": 91}, "organization": {"id": 131}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_MAINTAINER_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 87, "privilege": "worker"}, "organization": {"id": 184, "owner": {"id": 245}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 486}, "assignee": {"id": 87}, "organization": {"id": 184}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_SUPERVISOR_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 4, "privilege": "worker"}, "organization": {"id": 168, "owner": {"id": 211}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 442}, "assignee": {"id": 4}, "organization": {"id": 661}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_SUPERVISOR_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 36, "privilege": "worker"}, "organization": {"id": 120, "owner": {"id": 233}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 409}, "assignee": {"id": 36}, "organization": {"id": 692}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_SUPERVISOR_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 97, "privilege": "worker"}, "organization": {"id": 188, "owner": {"id": 281}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 493}, "assignee": {"id": 97}, "organization": {"id": 613}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_SUPERVISOR_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 73, "privilege": "worker"}, "organization": {"id": 106, "owner": {"id": 272}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 487}, "assignee": {"id": 73}, "organization": {"id": 620}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_SUPERVISOR_resource_user_num_resources_0_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 98, "privilege": "worker"}, "organization": {"id": 137, "owner": {"id": 280}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 462}, "assignee": {"id": 98}, "organization": {"id": 137}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_SUPERVISOR_resource_user_num_resources_1_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 4, "privilege": "worker"}, "organization": {"id": 198, "owner": {"id": 234}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 478}, "assignee": {"id": 4}, "organization": {"id": 198}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_SUPERVISOR_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 84, "privilege": "worker"}, "organization": {"id": 174, "owner": {"id": 274}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 436}, "assignee": {"id": 84}, "organization": {"id": 174}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_SUPERVISOR_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 98, "privilege": "worker"}, "organization": {"id": 157, "owner": {"id": 243}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 454}, "assignee": {"id": 98}, "organization": {"id": 157}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_WORKER_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 56, "privilege": "worker"}, "organization": {"id": 115, "owner": {"id": 209}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 414}, "assignee": {"id": 56}, "organization": {"id": 626}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_WORKER_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 8, "privilege": "worker"}, "organization": {"id": 190, "owner": {"id": 265}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 438}, "assignee": {"id": 8}, "organization": {"id": 694}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_WORKER_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 12, "privilege": "worker"}, "organization": {"id": 163, "owner": {"id": 211}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 437}, "assignee": {"id": 12}, "organization": {"id": 695}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_WORKER_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 63, "privilege": "worker"}, "organization": {"id": 128, "owner": {"id": 269}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 456}, "assignee": {"id": 63}, "organization": {"id": 607}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_WORKER_resource_user_num_resources_0_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 58, "privilege": "worker"}, "organization": {"id": 155, "owner": {"id": 253}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 417}, "assignee": {"id": 58}, "organization": {"id": 155}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_WORKER_resource_user_num_resources_1_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 79, "privilege": "worker"}, "organization": {"id": 180, "owner": {"id": 218}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 428}, "assignee": {"id": 79}, "organization": {"id": 180}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_WORKER_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 99, "privilege": "worker"}, "organization": {"id": 115, "owner": {"id": 214}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 447}, "assignee": {"id": 99}, "organization": {"id": 115}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_WORKER_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 5, "privilege": "worker"}, "organization": {"id": 160, "owner": {"id": 255}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 400}, "assignee": {"id": 5}, "organization": {"id": 160}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_NONE_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 32, "privilege": "worker"}, "organization": {"id": 151, "owner": {"id": 283}, "user": {"role": null}}}, "resource": {"owner": {"id": 443}, "assignee": {"id": 32}, "organization": {"id": 616}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_NONE_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 44, "privilege": "worker"}, "organization": {"id": 175, "owner": {"id": 246}, "user": {"role": null}}}, "resource": {"owner": {"id": 431}, "assignee": {"id": 44}, "organization": {"id": 636}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_NONE_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 95, "privilege": "worker"}, "organization": {"id": 194, "owner": {"id": 293}, "user": {"role": null}}}, "resource": {"owner": {"id": 421}, "assignee": {"id": 95}, "organization": {"id": 620}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_NONE_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 2, "privilege": "worker"}, "organization": {"id": 169, "owner": {"id": 296}, "user": {"role": null}}}, "resource": {"owner": {"id": 453}, "assignee": {"id": 2}, "organization": {"id": 670}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_NONE_resource_user_num_resources_0_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 70, "privilege": "worker"}, "organization": {"id": 169, "owner": {"id": 283}, "user": {"role": null}}}, "resource": {"owner": {"id": 427}, "assignee": {"id": 70}, "organization": {"id": 169}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_NONE_resource_user_num_resources_1_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 89, "privilege": "worker"}, "organization": {"id": 194, "owner": {"id": 219}, "user": {"role": null}}}, "resource": {"owner": {"id": 489}, "assignee": {"id": 89}, "organization": {"id": 194}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_NONE_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 43, "privilege": "worker"}, "organization": {"id": 136, "owner": {"id": 295}, "user": {"role": null}}}, "resource": {"owner": {"id": 418}, "assignee": {"id": 43}, "organization": {"id": 136}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_WORKER_membership_NONE_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 90, "privilege": "worker"}, "organization": {"id": 171, "owner": {"id": 258}, "user": {"role": null}}}, "resource": {"owner": {"id": 445}, "assignee": {"id": 90}, "organization": {"id": 171}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_OWNER_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 83, "privilege": "none"}, "organization": {"id": 105, "owner": {"id": 83}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 497}, "assignee": {"id": 83}, "organization": {"id": 696}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_OWNER_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 51, "privilege": "none"}, "organization": {"id": 137, "owner": {"id": 51}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 453}, "assignee": {"id": 51}, "organization": {"id": 633}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_OWNER_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 89, "privilege": "none"}, "organization": {"id": 108, "owner": {"id": 89}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 417}, "assignee": {"id": 89}, "organization": {"id": 601}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_OWNER_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 8, "privilege": "none"}, "organization": {"id": 159, "owner": {"id": 8}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 431}, "assignee": {"id": 8}, "organization": {"id": 615}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_OWNER_resource_user_num_resources_0_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 26, "privilege": "none"}, "organization": {"id": 199, "owner": {"id": 26}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 499}, "assignee": {"id": 26}, "organization": {"id": 199}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_OWNER_resource_user_num_resources_1_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 36, "privilege": "none"}, "organization": {"id": 187, "owner": {"id": 36}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 482}, "assignee": {"id": 36}, "organization": {"id": 187}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_OWNER_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 3, "privilege": "none"}, "organization": {"id": 143, "owner": {"id": 3}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 468}, "assignee": {"id": 3}, "organization": {"id": 143}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_OWNER_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 54, "privilege": "none"}, "organization": {"id": 112, "owner": {"id": 54}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 430}, "assignee": {"id": 54}, "organization": {"id": 112}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_MAINTAINER_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 61, "privilege": "none"}, "organization": {"id": 137, "owner": {"id": 236}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 423}, "assignee": {"id": 61}, "organization": {"id": 615}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_MAINTAINER_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 69, "privilege": "none"}, "organization": {"id": 100, "owner": {"id": 255}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 434}, "assignee": {"id": 69}, "organization": {"id": 651}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_MAINTAINER_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 78, "privilege": "none"}, "organization": {"id": 142, "owner": {"id": 270}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 475}, "assignee": {"id": 78}, "organization": {"id": 621}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_MAINTAINER_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 34, "privilege": "none"}, "organization": {"id": 101, "owner": {"id": 234}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 452}, "assignee": {"id": 34}, "organization": {"id": 641}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_MAINTAINER_resource_user_num_resources_0_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 95, "privilege": "none"}, "organization": {"id": 130, "owner": {"id": 214}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 440}, "assignee": {"id": 95}, "organization": {"id": 130}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_MAINTAINER_resource_user_num_resources_1_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 56, "privilege": "none"}, "organization": {"id": 133, "owner": {"id": 249}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 412}, "assignee": {"id": 56}, "organization": {"id": 133}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_MAINTAINER_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 98, "privilege": "none"}, "organization": {"id": 100, "owner": {"id": 221}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 405}, "assignee": {"id": 98}, "organization": {"id": 100}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_MAINTAINER_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 34, "privilege": "none"}, "organization": {"id": 191, "owner": {"id": 287}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 438}, "assignee": {"id": 34}, "organization": {"id": 191}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_SUPERVISOR_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 4, "privilege": "none"}, "organization": {"id": 112, "owner": {"id": 226}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 444}, "assignee": {"id": 4}, "organization": {"id": 611}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_SUPERVISOR_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 63, "privilege": "none"}, "organization": {"id": 136, "owner": {"id": 277}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 471}, "assignee": {"id": 63}, "organization": {"id": 678}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_SUPERVISOR_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 8, "privilege": "none"}, "organization": {"id": 157, "owner": {"id": 234}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 429}, "assignee": {"id": 8}, "organization": {"id": 645}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_SUPERVISOR_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 90, "privilege": "none"}, "organization": {"id": 108, "owner": {"id": 279}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 403}, "assignee": {"id": 90}, "organization": {"id": 652}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_SUPERVISOR_resource_user_num_resources_0_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 66, "privilege": "none"}, "organization": {"id": 156, "owner": {"id": 296}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 463}, "assignee": {"id": 66}, "organization": {"id": 156}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_SUPERVISOR_resource_user_num_resources_1_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 42, "privilege": "none"}, "organization": {"id": 158, "owner": {"id": 229}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 451}, "assignee": {"id": 42}, "organization": {"id": 158}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_SUPERVISOR_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 31, "privilege": "none"}, "organization": {"id": 147, "owner": {"id": 214}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 487}, "assignee": {"id": 31}, "organization": {"id": 147}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_SUPERVISOR_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 92, "privilege": "none"}, "organization": {"id": 185, "owner": {"id": 260}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 400}, "assignee": {"id": 92}, "organization": {"id": 185}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_WORKER_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 38, "privilege": "none"}, "organization": {"id": 196, "owner": {"id": 286}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 459}, "assignee": {"id": 38}, "organization": {"id": 689}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_WORKER_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 87, "privilege": "none"}, "organization": {"id": 111, "owner": {"id": 282}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 417}, "assignee": {"id": 87}, "organization": {"id": 690}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_WORKER_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 75, "privilege": "none"}, "organization": {"id": 105, "owner": {"id": 258}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 459}, "assignee": {"id": 75}, "organization": {"id": 647}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_WORKER_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 72, "privilege": "none"}, "organization": {"id": 171, "owner": {"id": 267}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 456}, "assignee": {"id": 72}, "organization": {"id": 634}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_WORKER_resource_user_num_resources_0_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 49, "privilege": "none"}, "organization": {"id": 106, "owner": {"id": 223}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 476}, "assignee": {"id": 49}, "organization": {"id": 106}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_WORKER_resource_user_num_resources_1_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 9, "privilege": "none"}, "organization": {"id": 193, "owner": {"id": 247}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 415}, "assignee": {"id": 9}, "organization": {"id": 193}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_WORKER_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 7, "privilege": "none"}, "organization": {"id": 128, "owner": {"id": 200}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 444}, "assignee": {"id": 7}, "organization": {"id": 128}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_WORKER_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 94, "privilege": "none"}, "organization": {"id": 126, "owner": {"id": 270}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 422}, "assignee": {"id": 94}, "organization": {"id": 126}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_NONE_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 25, "privilege": "none"}, "organization": {"id": 170, "owner": {"id": 226}, "user": {"role": null}}}, "resource": {"owner": {"id": 443}, "assignee": {"id": 25}, "organization": {"id": 671}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_NONE_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 95, "privilege": "none"}, "organization": {"id": 158, "owner": {"id": 221}, "user": {"role": null}}}, "resource": {"owner": {"id": 438}, "assignee": {"id": 95}, "organization": {"id": 617}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_NONE_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 99, "privilege": "none"}, "organization": {"id": 104, "owner": {"id": 274}, "user": {"role": null}}}, "resource": {"owner": {"id": 403}, "assignee": {"id": 99}, "organization": {"id": 622}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_NONE_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 31, "privilege": "none"}, "organization": {"id": 164, "owner": {"id": 213}, "user": {"role": null}}}, "resource": {"owner": {"id": 428}, "assignee": {"id": 31}, "organization": {"id": 696}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_NONE_resource_user_num_resources_0_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 81, "privilege": "none"}, "organization": {"id": 111, "owner": {"id": 221}, "user": {"role": null}}}, "resource": {"owner": {"id": 434}, "assignee": {"id": 81}, "organization": {"id": 111}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_NONE_resource_user_num_resources_1_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 4, "privilege": "none"}, "organization": {"id": 112, "owner": {"id": 210}, "user": {"role": null}}}, "resource": {"owner": {"id": 471}, "assignee": {"id": 4}, "organization": {"id": 112}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_NONE_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 82, "privilege": "none"}, "organization": {"id": 112, "owner": {"id": 250}, "user": {"role": null}}}, "resource": {"owner": {"id": 448}, "assignee": {"id": 82}, "organization": {"id": 112}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_ASSIGNEE_privilege_NONE_membership_NONE_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 6, "privilege": "none"}, "organization": {"id": 157, "owner": {"id": 244}, "user": {"role": null}}}, "resource": {"owner": {"id": 458}, "assignee": {"id": 6}, "organization": {"id": 157}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_OWNER_resource_user_num_resources_0_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 14, "privilege": "admin"}, "organization": {"id": 110, "owner": {"id": 14}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 455}, "assignee": {"id": 590}, "organization": {"id": 680}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_OWNER_resource_user_num_resources_1_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 4, "privilege": "admin"}, "organization": {"id": 164, "owner": {"id": 4}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 490}, "assignee": {"id": 556}, "organization": {"id": 675}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_OWNER_resource_user_num_resources_3_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 40, "privilege": "admin"}, "organization": {"id": 168, "owner": {"id": 40}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 495}, "assignee": {"id": 513}, "organization": {"id": 691}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_OWNER_resource_user_num_resources_10_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 77, "privilege": "admin"}, "organization": {"id": 154, "owner": {"id": 77}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 492}, "assignee": {"id": 518}, "organization": {"id": 681}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_OWNER_resource_user_num_resources_0_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 97, "privilege": "admin"}, "organization": {"id": 167, "owner": {"id": 97}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 484}, "assignee": {"id": 592}, "organization": {"id": 167}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_OWNER_resource_user_num_resources_1_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 62, "privilege": "admin"}, "organization": {"id": 105, "owner": {"id": 62}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 457}, "assignee": {"id": 532}, "organization": {"id": 105}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_OWNER_resource_user_num_resources_3_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 37, "privilege": "admin"}, "organization": {"id": 121, "owner": {"id": 37}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 487}, "assignee": {"id": 568}, "organization": {"id": 121}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_OWNER_resource_user_num_resources_10_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 39, "privilege": "admin"}, "organization": {"id": 110, "owner": {"id": 39}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 462}, "assignee": {"id": 596}, "organization": {"id": 110}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_MAINTAINER_resource_user_num_resources_0_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 93, "privilege": "admin"}, "organization": {"id": 163, "owner": {"id": 285}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 441}, "assignee": {"id": 544}, "organization": {"id": 691}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_MAINTAINER_resource_user_num_resources_1_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 99, "privilege": "admin"}, "organization": {"id": 153, "owner": {"id": 240}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 462}, "assignee": {"id": 561}, "organization": {"id": 635}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_MAINTAINER_resource_user_num_resources_3_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 3, "privilege": "admin"}, "organization": {"id": 160, "owner": {"id": 229}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 433}, "assignee": {"id": 521}, "organization": {"id": 669}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_MAINTAINER_resource_user_num_resources_10_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 98, "privilege": "admin"}, "organization": {"id": 172, "owner": {"id": 246}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 448}, "assignee": {"id": 544}, "organization": {"id": 638}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_MAINTAINER_resource_user_num_resources_0_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 19, "privilege": "admin"}, "organization": {"id": 159, "owner": {"id": 250}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 400}, "assignee": {"id": 570}, "organization": {"id": 159}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_MAINTAINER_resource_user_num_resources_1_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 33, "privilege": "admin"}, "organization": {"id": 168, "owner": {"id": 278}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 499}, "assignee": {"id": 551}, "organization": {"id": 168}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_MAINTAINER_resource_user_num_resources_3_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 81, "privilege": "admin"}, "organization": {"id": 154, "owner": {"id": 272}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 426}, "assignee": {"id": 505}, "organization": {"id": 154}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_MAINTAINER_resource_user_num_resources_10_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 72, "privilege": "admin"}, "organization": {"id": 140, "owner": {"id": 287}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 480}, "assignee": {"id": 558}, "organization": {"id": 140}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_SUPERVISOR_resource_user_num_resources_0_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 45, "privilege": "admin"}, "organization": {"id": 101, "owner": {"id": 201}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 436}, "assignee": {"id": 550}, "organization": {"id": 655}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_SUPERVISOR_resource_user_num_resources_1_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 1, "privilege": "admin"}, "organization": {"id": 169, "owner": {"id": 290}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 420}, "assignee": {"id": 521}, "organization": {"id": 671}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_SUPERVISOR_resource_user_num_resources_3_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 59, "privilege": "admin"}, "organization": {"id": 117, "owner": {"id": 231}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 470}, "assignee": {"id": 599}, "organization": {"id": 652}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_SUPERVISOR_resource_user_num_resources_10_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 9, "privilege": "admin"}, "organization": {"id": 148, "owner": {"id": 292}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 460}, "assignee": {"id": 564}, "organization": {"id": 629}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_SUPERVISOR_resource_user_num_resources_0_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 69, "privilege": "admin"}, "organization": {"id": 144, "owner": {"id": 220}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 468}, "assignee": {"id": 523}, "organization": {"id": 144}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_SUPERVISOR_resource_user_num_resources_1_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 62, "privilege": "admin"}, "organization": {"id": 125, "owner": {"id": 289}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 470}, "assignee": {"id": 575}, "organization": {"id": 125}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_SUPERVISOR_resource_user_num_resources_3_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 71, "privilege": "admin"}, "organization": {"id": 151, "owner": {"id": 280}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 498}, "assignee": {"id": 509}, "organization": {"id": 151}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_SUPERVISOR_resource_user_num_resources_10_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 94, "privilege": "admin"}, "organization": {"id": 196, "owner": {"id": 274}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 499}, "assignee": {"id": 523}, "organization": {"id": 196}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_WORKER_resource_user_num_resources_0_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 28, "privilege": "admin"}, "organization": {"id": 181, "owner": {"id": 284}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 469}, "assignee": {"id": 506}, "organization": {"id": 673}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_WORKER_resource_user_num_resources_1_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 86, "privilege": "admin"}, "organization": {"id": 140, "owner": {"id": 298}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 481}, "assignee": {"id": 569}, "organization": {"id": 687}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_WORKER_resource_user_num_resources_3_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 1, "privilege": "admin"}, "organization": {"id": 124, "owner": {"id": 281}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 496}, "assignee": {"id": 589}, "organization": {"id": 686}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_WORKER_resource_user_num_resources_10_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 40, "privilege": "admin"}, "organization": {"id": 166, "owner": {"id": 240}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 427}, "assignee": {"id": 500}, "organization": {"id": 624}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_WORKER_resource_user_num_resources_0_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 29, "privilege": "admin"}, "organization": {"id": 135, "owner": {"id": 291}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 488}, "assignee": {"id": 528}, "organization": {"id": 135}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_WORKER_resource_user_num_resources_1_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 77, "privilege": "admin"}, "organization": {"id": 127, "owner": {"id": 227}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 484}, "assignee": {"id": 586}, "organization": {"id": 127}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_WORKER_resource_user_num_resources_3_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 65, "privilege": "admin"}, "organization": {"id": 155, "owner": {"id": 289}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 492}, "assignee": {"id": 502}, "organization": {"id": 155}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_WORKER_resource_user_num_resources_10_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 65, "privilege": "admin"}, "organization": {"id": 168, "owner": {"id": 264}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 411}, "assignee": {"id": 530}, "organization": {"id": 168}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_NONE_resource_user_num_resources_0_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 36, "privilege": "admin"}, "organization": {"id": 107, "owner": {"id": 207}, "user": {"role": null}}}, "resource": {"owner": {"id": 434}, "assignee": {"id": 574}, "organization": {"id": 642}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_NONE_resource_user_num_resources_1_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 15, "privilege": "admin"}, "organization": {"id": 106, "owner": {"id": 241}, "user": {"role": null}}}, "resource": {"owner": {"id": 441}, "assignee": {"id": 501}, "organization": {"id": 661}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_NONE_resource_user_num_resources_3_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 32, "privilege": "admin"}, "organization": {"id": 124, "owner": {"id": 268}, "user": {"role": null}}}, "resource": {"owner": {"id": 403}, "assignee": {"id": 586}, "organization": {"id": 647}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_NONE_resource_user_num_resources_10_same_org_FALSE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 58, "privilege": "admin"}, "organization": {"id": 125, "owner": {"id": 235}, "user": {"role": null}}}, "resource": {"owner": {"id": 455}, "assignee": {"id": 552}, "organization": {"id": 665}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_NONE_resource_user_num_resources_0_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 48, "privilege": "admin"}, "organization": {"id": 106, "owner": {"id": 289}, "user": {"role": null}}}, "resource": {"owner": {"id": 410}, "assignee": {"id": 528}, "organization": {"id": 106}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_NONE_resource_user_num_resources_1_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 51, "privilege": "admin"}, "organization": {"id": 175, "owner": {"id": 272}, "user": {"role": null}}}, "resource": {"owner": {"id": 405}, "assignee": {"id": 590}, "organization": {"id": 175}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_NONE_resource_user_num_resources_3_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 47, "privilege": "admin"}, "organization": {"id": 109, "owner": {"id": 271}, "user": {"role": null}}}, "resource": {"owner": {"id": 415}, "assignee": {"id": 547}, "organization": {"id": 109}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_ADMIN_membership_NONE_resource_user_num_resources_10_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 56, "privilege": "admin"}, "organization": {"id": 155, "owner": {"id": 226}, "user": {"role": null}}}, "resource": {"owner": {"id": 447}, "assignee": {"id": 523}, "organization": {"id": 155}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_OWNER_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 33, "privilege": "business"}, "organization": {"id": 198, "owner": {"id": 33}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 453}, "assignee": {"id": 590}, "organization": {"id": 634}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_OWNER_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 9, "privilege": "business"}, "organization": {"id": 125, "owner": {"id": 9}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 417}, "assignee": {"id": 550}, "organization": {"id": 660}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_OWNER_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 79, "privilege": "business"}, "organization": {"id": 162, "owner": {"id": 79}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 463}, "assignee": {"id": 580}, "organization": {"id": 678}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_OWNER_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 5, "privilege": "business"}, "organization": {"id": 155, "owner": {"id": 5}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 498}, "assignee": {"id": 586}, "organization": {"id": 681}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_OWNER_resource_user_num_resources_0_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 79, "privilege": "business"}, "organization": {"id": 103, "owner": {"id": 79}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 427}, "assignee": {"id": 559}, "organization": {"id": 103}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_OWNER_resource_user_num_resources_1_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 94, "privilege": "business"}, "organization": {"id": 136, "owner": {"id": 94}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 490}, "assignee": {"id": 523}, "organization": {"id": 136}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_OWNER_resource_user_num_resources_3_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 43, "privilege": "business"}, "organization": {"id": 106, "owner": {"id": 43}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 496}, "assignee": {"id": 524}, "organization": {"id": 106}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_OWNER_resource_user_num_resources_10_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 1, "privilege": "business"}, "organization": {"id": 106, "owner": {"id": 1}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 442}, "assignee": {"id": 533}, "organization": {"id": 106}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_MAINTAINER_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 25, "privilege": "business"}, "organization": {"id": 155, "owner": {"id": 221}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 441}, "assignee": {"id": 540}, "organization": {"id": 626}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_MAINTAINER_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 33, "privilege": "business"}, "organization": {"id": 124, "owner": {"id": 290}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 486}, "assignee": {"id": 520}, "organization": {"id": 607}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_MAINTAINER_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 56, "privilege": "business"}, "organization": {"id": 130, "owner": {"id": 288}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 454}, "assignee": {"id": 504}, "organization": {"id": 697}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_MAINTAINER_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 25, "privilege": "business"}, "organization": {"id": 101, "owner": {"id": 203}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 469}, "assignee": {"id": 528}, "organization": {"id": 658}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_MAINTAINER_resource_user_num_resources_0_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 13, "privilege": "business"}, "organization": {"id": 119, "owner": {"id": 240}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 496}, "assignee": {"id": 513}, "organization": {"id": 119}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_MAINTAINER_resource_user_num_resources_1_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 74, "privilege": "business"}, "organization": {"id": 110, "owner": {"id": 296}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 481}, "assignee": {"id": 535}, "organization": {"id": 110}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_MAINTAINER_resource_user_num_resources_3_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 90, "privilege": "business"}, "organization": {"id": 141, "owner": {"id": 211}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 452}, "assignee": {"id": 519}, "organization": {"id": 141}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_MAINTAINER_resource_user_num_resources_10_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 6, "privilege": "business"}, "organization": {"id": 108, "owner": {"id": 284}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 460}, "assignee": {"id": 535}, "organization": {"id": 108}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_SUPERVISOR_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 17, "privilege": "business"}, "organization": {"id": 118, "owner": {"id": 205}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 449}, "assignee": {"id": 598}, "organization": {"id": 647}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_SUPERVISOR_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 79, "privilege": "business"}, "organization": {"id": 110, "owner": {"id": 219}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 404}, "assignee": {"id": 574}, "organization": {"id": 607}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_SUPERVISOR_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 32, "privilege": "business"}, "organization": {"id": 195, "owner": {"id": 249}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 461}, "assignee": {"id": 522}, "organization": {"id": 693}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_SUPERVISOR_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 57, "privilege": "business"}, "organization": {"id": 161, "owner": {"id": 296}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 458}, "assignee": {"id": 559}, "organization": {"id": 694}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_SUPERVISOR_resource_user_num_resources_0_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 33, "privilege": "business"}, "organization": {"id": 169, "owner": {"id": 223}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 435}, "assignee": {"id": 545}, "organization": {"id": 169}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_SUPERVISOR_resource_user_num_resources_1_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 16, "privilege": "business"}, "organization": {"id": 100, "owner": {"id": 273}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 495}, "assignee": {"id": 531}, "organization": {"id": 100}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_SUPERVISOR_resource_user_num_resources_3_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 65, "privilege": "business"}, "organization": {"id": 106, "owner": {"id": 288}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 470}, "assignee": {"id": 577}, "organization": {"id": 106}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_SUPERVISOR_resource_user_num_resources_10_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 30, "privilege": "business"}, "organization": {"id": 123, "owner": {"id": 203}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 467}, "assignee": {"id": 544}, "organization": {"id": 123}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_WORKER_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 77, "privilege": "business"}, "organization": {"id": 119, "owner": {"id": 208}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 429}, "assignee": {"id": 591}, "organization": {"id": 630}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_WORKER_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 17, "privilege": "business"}, "organization": {"id": 172, "owner": {"id": 225}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 458}, "assignee": {"id": 584}, "organization": {"id": 622}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_WORKER_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 29, "privilege": "business"}, "organization": {"id": 197, "owner": {"id": 230}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 421}, "assignee": {"id": 509}, "organization": {"id": 667}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_WORKER_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 55, "privilege": "business"}, "organization": {"id": 114, "owner": {"id": 250}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 418}, "assignee": {"id": 572}, "organization": {"id": 646}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_WORKER_resource_user_num_resources_0_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 18, "privilege": "business"}, "organization": {"id": 189, "owner": {"id": 291}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 485}, "assignee": {"id": 540}, "organization": {"id": 189}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_WORKER_resource_user_num_resources_1_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 30, "privilege": "business"}, "organization": {"id": 122, "owner": {"id": 259}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 415}, "assignee": {"id": 532}, "organization": {"id": 122}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_WORKER_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 62, "privilege": "business"}, "organization": {"id": 199, "owner": {"id": 293}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 432}, "assignee": {"id": 584}, "organization": {"id": 199}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_WORKER_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 6, "privilege": "business"}, "organization": {"id": 140, "owner": {"id": 244}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 447}, "assignee": {"id": 580}, "organization": {"id": 140}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_NONE_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 49, "privilege": "business"}, "organization": {"id": 173, "owner": {"id": 239}, "user": {"role": null}}}, "resource": {"owner": {"id": 463}, "assignee": {"id": 525}, "organization": {"id": 695}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_NONE_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 59, "privilege": "business"}, "organization": {"id": 136, "owner": {"id": 231}, "user": {"role": null}}}, "resource": {"owner": {"id": 475}, "assignee": {"id": 570}, "organization": {"id": 620}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_NONE_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 68, "privilege": "business"}, "organization": {"id": 133, "owner": {"id": 261}, "user": {"role": null}}}, "resource": {"owner": {"id": 403}, "assignee": {"id": 567}, "organization": {"id": 683}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_NONE_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 41, "privilege": "business"}, "organization": {"id": 185, "owner": {"id": 287}, "user": {"role": null}}}, "resource": {"owner": {"id": 466}, "assignee": {"id": 517}, "organization": {"id": 662}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_NONE_resource_user_num_resources_0_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 43, "privilege": "business"}, "organization": {"id": 130, "owner": {"id": 238}, "user": {"role": null}}}, "resource": {"owner": {"id": 495}, "assignee": {"id": 592}, "organization": {"id": 130}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_NONE_resource_user_num_resources_1_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 64, "privilege": "business"}, "organization": {"id": 110, "owner": {"id": 240}, "user": {"role": null}}}, "resource": {"owner": {"id": 441}, "assignee": {"id": 539}, "organization": {"id": 110}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_NONE_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 29, "privilege": "business"}, "organization": {"id": 141, "owner": {"id": 289}, "user": {"role": null}}}, "resource": {"owner": {"id": 424}, "assignee": {"id": 534}, "organization": {"id": 141}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_BUSINESS_membership_NONE_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 94, "privilege": "business"}, "organization": {"id": 197, "owner": {"id": 293}, "user": {"role": null}}}, "resource": {"owner": {"id": 461}, "assignee": {"id": 536}, "organization": {"id": 197}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_OWNER_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 11, "privilege": "user"}, "organization": {"id": 146, "owner": {"id": 11}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 428}, "assignee": {"id": 511}, "organization": {"id": 654}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_OWNER_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 30, "privilege": "user"}, "organization": {"id": 165, "owner": {"id": 30}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 438}, "assignee": {"id": 593}, "organization": {"id": 649}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_OWNER_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 45, "privilege": "user"}, "organization": {"id": 187, "owner": {"id": 45}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 421}, "assignee": {"id": 502}, "organization": {"id": 655}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_OWNER_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 18, "privilege": "user"}, "organization": {"id": 183, "owner": {"id": 18}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 420}, "assignee": {"id": 581}, "organization": {"id": 699}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_OWNER_resource_user_num_resources_0_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 53, "privilege": "user"}, "organization": {"id": 172, "owner": {"id": 53}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 441}, "assignee": {"id": 566}, "organization": {"id": 172}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_OWNER_resource_user_num_resources_1_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 79, "privilege": "user"}, "organization": {"id": 136, "owner": {"id": 79}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 423}, "assignee": {"id": 576}, "organization": {"id": 136}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_OWNER_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 46, "privilege": "user"}, "organization": {"id": 173, "owner": {"id": 46}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 459}, "assignee": {"id": 597}, "organization": {"id": 173}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_OWNER_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 83, "privilege": "user"}, "organization": {"id": 187, "owner": {"id": 83}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 464}, "assignee": {"id": 543}, "organization": {"id": 187}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_MAINTAINER_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 57, "privilege": "user"}, "organization": {"id": 171, "owner": {"id": 248}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 418}, "assignee": {"id": 531}, "organization": {"id": 693}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_MAINTAINER_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 15, "privilege": "user"}, "organization": {"id": 119, "owner": {"id": 211}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 418}, "assignee": {"id": 557}, "organization": {"id": 698}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_MAINTAINER_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 38, "privilege": "user"}, "organization": {"id": 195, "owner": {"id": 255}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 412}, "assignee": {"id": 500}, "organization": {"id": 657}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_MAINTAINER_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 43, "privilege": "user"}, "organization": {"id": 145, "owner": {"id": 258}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 430}, "assignee": {"id": 532}, "organization": {"id": 657}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_MAINTAINER_resource_user_num_resources_0_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 83, "privilege": "user"}, "organization": {"id": 184, "owner": {"id": 285}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 414}, "assignee": {"id": 515}, "organization": {"id": 184}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_MAINTAINER_resource_user_num_resources_1_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 42, "privilege": "user"}, "organization": {"id": 175, "owner": {"id": 236}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 429}, "assignee": {"id": 593}, "organization": {"id": 175}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_MAINTAINER_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 84, "privilege": "user"}, "organization": {"id": 165, "owner": {"id": 217}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 498}, "assignee": {"id": 531}, "organization": {"id": 165}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_MAINTAINER_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 4, "privilege": "user"}, "organization": {"id": 169, "owner": {"id": 243}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 434}, "assignee": {"id": 565}, "organization": {"id": 169}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_SUPERVISOR_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 20, "privilege": "user"}, "organization": {"id": 149, "owner": {"id": 216}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 483}, "assignee": {"id": 588}, "organization": {"id": 608}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_SUPERVISOR_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 8, "privilege": "user"}, "organization": {"id": 101, "owner": {"id": 278}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 445}, "assignee": {"id": 562}, "organization": {"id": 679}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_SUPERVISOR_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 59, "privilege": "user"}, "organization": {"id": 107, "owner": {"id": 267}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 493}, "assignee": {"id": 506}, "organization": {"id": 690}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_SUPERVISOR_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 85, "privilege": "user"}, "organization": {"id": 162, "owner": {"id": 285}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 425}, "assignee": {"id": 533}, "organization": {"id": 634}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_SUPERVISOR_resource_user_num_resources_0_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 66, "privilege": "user"}, "organization": {"id": 120, "owner": {"id": 297}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 464}, "assignee": {"id": 589}, "organization": {"id": 120}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_SUPERVISOR_resource_user_num_resources_1_same_org_TRUE {
    allow with input as {"scope": "create", "auth": {"user": {"id": 12, "privilege": "user"}, "organization": {"id": 134, "owner": {"id": 233}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 490}, "assignee": {"id": 583}, "organization": {"id": 134}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_SUPERVISOR_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 49, "privilege": "user"}, "organization": {"id": 152, "owner": {"id": 243}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 495}, "assignee": {"id": 538}, "organization": {"id": 152}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_SUPERVISOR_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 44, "privilege": "user"}, "organization": {"id": 157, "owner": {"id": 237}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 456}, "assignee": {"id": 589}, "organization": {"id": 157}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_WORKER_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 52, "privilege": "user"}, "organization": {"id": 102, "owner": {"id": 200}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 433}, "assignee": {"id": 571}, "organization": {"id": 613}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_WORKER_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 80, "privilege": "user"}, "organization": {"id": 118, "owner": {"id": 212}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 469}, "assignee": {"id": 516}, "organization": {"id": 639}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_WORKER_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 3, "privilege": "user"}, "organization": {"id": 118, "owner": {"id": 238}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 446}, "assignee": {"id": 572}, "organization": {"id": 613}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_WORKER_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 50, "privilege": "user"}, "organization": {"id": 103, "owner": {"id": 200}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 464}, "assignee": {"id": 528}, "organization": {"id": 699}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_WORKER_resource_user_num_resources_0_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 44, "privilege": "user"}, "organization": {"id": 125, "owner": {"id": 265}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 455}, "assignee": {"id": 555}, "organization": {"id": 125}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_WORKER_resource_user_num_resources_1_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 86, "privilege": "user"}, "organization": {"id": 141, "owner": {"id": 264}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 446}, "assignee": {"id": 569}, "organization": {"id": 141}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_WORKER_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 99, "privilege": "user"}, "organization": {"id": 107, "owner": {"id": 240}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 470}, "assignee": {"id": 524}, "organization": {"id": 107}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_WORKER_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 92, "privilege": "user"}, "organization": {"id": 126, "owner": {"id": 217}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 465}, "assignee": {"id": 591}, "organization": {"id": 126}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_NONE_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 13, "privilege": "user"}, "organization": {"id": 118, "owner": {"id": 262}, "user": {"role": null}}}, "resource": {"owner": {"id": 451}, "assignee": {"id": 504}, "organization": {"id": 646}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_NONE_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 33, "privilege": "user"}, "organization": {"id": 197, "owner": {"id": 281}, "user": {"role": null}}}, "resource": {"owner": {"id": 401}, "assignee": {"id": 552}, "organization": {"id": 652}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_NONE_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 74, "privilege": "user"}, "organization": {"id": 148, "owner": {"id": 269}, "user": {"role": null}}}, "resource": {"owner": {"id": 438}, "assignee": {"id": 552}, "organization": {"id": 695}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_NONE_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 71, "privilege": "user"}, "organization": {"id": 146, "owner": {"id": 242}, "user": {"role": null}}}, "resource": {"owner": {"id": 478}, "assignee": {"id": 539}, "organization": {"id": 632}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_NONE_resource_user_num_resources_0_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 13, "privilege": "user"}, "organization": {"id": 193, "owner": {"id": 259}, "user": {"role": null}}}, "resource": {"owner": {"id": 484}, "assignee": {"id": 592}, "organization": {"id": 193}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_NONE_resource_user_num_resources_1_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 73, "privilege": "user"}, "organization": {"id": 128, "owner": {"id": 270}, "user": {"role": null}}}, "resource": {"owner": {"id": 419}, "assignee": {"id": 550}, "organization": {"id": 128}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_NONE_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 48, "privilege": "user"}, "organization": {"id": 111, "owner": {"id": 292}, "user": {"role": null}}}, "resource": {"owner": {"id": 440}, "assignee": {"id": 536}, "organization": {"id": 111}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_USER_membership_NONE_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 7, "privilege": "user"}, "organization": {"id": 196, "owner": {"id": 236}, "user": {"role": null}}}, "resource": {"owner": {"id": 437}, "assignee": {"id": 559}, "organization": {"id": 196}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_OWNER_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 42, "privilege": "worker"}, "organization": {"id": 145, "owner": {"id": 42}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 439}, "assignee": {"id": 534}, "organization": {"id": 618}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_OWNER_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 33, "privilege": "worker"}, "organization": {"id": 164, "owner": {"id": 33}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 443}, "assignee": {"id": 598}, "organization": {"id": 686}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_OWNER_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 98, "privilege": "worker"}, "organization": {"id": 185, "owner": {"id": 98}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 420}, "assignee": {"id": 502}, "organization": {"id": 661}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_OWNER_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 24, "privilege": "worker"}, "organization": {"id": 197, "owner": {"id": 24}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 411}, "assignee": {"id": 537}, "organization": {"id": 644}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_OWNER_resource_user_num_resources_0_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 51, "privilege": "worker"}, "organization": {"id": 132, "owner": {"id": 51}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 455}, "assignee": {"id": 500}, "organization": {"id": 132}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_OWNER_resource_user_num_resources_1_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 69, "privilege": "worker"}, "organization": {"id": 105, "owner": {"id": 69}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 493}, "assignee": {"id": 502}, "organization": {"id": 105}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_OWNER_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 5, "privilege": "worker"}, "organization": {"id": 129, "owner": {"id": 5}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 415}, "assignee": {"id": 520}, "organization": {"id": 129}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_OWNER_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 8, "privilege": "worker"}, "organization": {"id": 144, "owner": {"id": 8}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 455}, "assignee": {"id": 517}, "organization": {"id": 144}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_MAINTAINER_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 89, "privilege": "worker"}, "organization": {"id": 142, "owner": {"id": 227}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 413}, "assignee": {"id": 598}, "organization": {"id": 643}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_MAINTAINER_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 57, "privilege": "worker"}, "organization": {"id": 190, "owner": {"id": 203}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 476}, "assignee": {"id": 535}, "organization": {"id": 648}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_MAINTAINER_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 4, "privilege": "worker"}, "organization": {"id": 195, "owner": {"id": 254}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 486}, "assignee": {"id": 579}, "organization": {"id": 676}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_MAINTAINER_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 69, "privilege": "worker"}, "organization": {"id": 160, "owner": {"id": 238}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 415}, "assignee": {"id": 524}, "organization": {"id": 676}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_MAINTAINER_resource_user_num_resources_0_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 35, "privilege": "worker"}, "organization": {"id": 192, "owner": {"id": 216}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 401}, "assignee": {"id": 510}, "organization": {"id": 192}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_MAINTAINER_resource_user_num_resources_1_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 44, "privilege": "worker"}, "organization": {"id": 116, "owner": {"id": 238}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 439}, "assignee": {"id": 562}, "organization": {"id": 116}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_MAINTAINER_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 3, "privilege": "worker"}, "organization": {"id": 133, "owner": {"id": 240}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 473}, "assignee": {"id": 568}, "organization": {"id": 133}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_MAINTAINER_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 29, "privilege": "worker"}, "organization": {"id": 184, "owner": {"id": 251}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 437}, "assignee": {"id": 575}, "organization": {"id": 184}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_SUPERVISOR_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 18, "privilege": "worker"}, "organization": {"id": 118, "owner": {"id": 287}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 437}, "assignee": {"id": 556}, "organization": {"id": 639}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_SUPERVISOR_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 61, "privilege": "worker"}, "organization": {"id": 146, "owner": {"id": 243}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 450}, "assignee": {"id": 588}, "organization": {"id": 681}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_SUPERVISOR_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 10, "privilege": "worker"}, "organization": {"id": 149, "owner": {"id": 261}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 427}, "assignee": {"id": 501}, "organization": {"id": 687}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_SUPERVISOR_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 1, "privilege": "worker"}, "organization": {"id": 119, "owner": {"id": 206}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 476}, "assignee": {"id": 580}, "organization": {"id": 673}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_SUPERVISOR_resource_user_num_resources_0_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 42, "privilege": "worker"}, "organization": {"id": 187, "owner": {"id": 210}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 488}, "assignee": {"id": 571}, "organization": {"id": 187}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_SUPERVISOR_resource_user_num_resources_1_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 3, "privilege": "worker"}, "organization": {"id": 100, "owner": {"id": 203}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 416}, "assignee": {"id": 580}, "organization": {"id": 100}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_SUPERVISOR_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 68, "privilege": "worker"}, "organization": {"id": 101, "owner": {"id": 297}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 413}, "assignee": {"id": 576}, "organization": {"id": 101}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_SUPERVISOR_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 73, "privilege": "worker"}, "organization": {"id": 156, "owner": {"id": 291}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 431}, "assignee": {"id": 517}, "organization": {"id": 156}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_WORKER_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 68, "privilege": "worker"}, "organization": {"id": 180, "owner": {"id": 209}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 489}, "assignee": {"id": 533}, "organization": {"id": 664}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_WORKER_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 3, "privilege": "worker"}, "organization": {"id": 120, "owner": {"id": 209}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 491}, "assignee": {"id": 532}, "organization": {"id": 641}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_WORKER_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 4, "privilege": "worker"}, "organization": {"id": 131, "owner": {"id": 281}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 437}, "assignee": {"id": 566}, "organization": {"id": 616}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_WORKER_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 53, "privilege": "worker"}, "organization": {"id": 190, "owner": {"id": 204}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 460}, "assignee": {"id": 570}, "organization": {"id": 644}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_WORKER_resource_user_num_resources_0_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 33, "privilege": "worker"}, "organization": {"id": 157, "owner": {"id": 261}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 451}, "assignee": {"id": 561}, "organization": {"id": 157}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_WORKER_resource_user_num_resources_1_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 15, "privilege": "worker"}, "organization": {"id": 119, "owner": {"id": 280}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 443}, "assignee": {"id": 545}, "organization": {"id": 119}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_WORKER_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 86, "privilege": "worker"}, "organization": {"id": 157, "owner": {"id": 261}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 448}, "assignee": {"id": 577}, "organization": {"id": 157}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_WORKER_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 91, "privilege": "worker"}, "organization": {"id": 111, "owner": {"id": 276}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 420}, "assignee": {"id": 525}, "organization": {"id": 111}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_NONE_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 52, "privilege": "worker"}, "organization": {"id": 133, "owner": {"id": 259}, "user": {"role": null}}}, "resource": {"owner": {"id": 483}, "assignee": {"id": 546}, "organization": {"id": 613}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_NONE_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 95, "privilege": "worker"}, "organization": {"id": 168, "owner": {"id": 252}, "user": {"role": null}}}, "resource": {"owner": {"id": 409}, "assignee": {"id": 524}, "organization": {"id": 608}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_NONE_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 88, "privilege": "worker"}, "organization": {"id": 142, "owner": {"id": 250}, "user": {"role": null}}}, "resource": {"owner": {"id": 416}, "assignee": {"id": 579}, "organization": {"id": 664}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_NONE_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 63, "privilege": "worker"}, "organization": {"id": 155, "owner": {"id": 260}, "user": {"role": null}}}, "resource": {"owner": {"id": 465}, "assignee": {"id": 525}, "organization": {"id": 682}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_NONE_resource_user_num_resources_0_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 92, "privilege": "worker"}, "organization": {"id": 182, "owner": {"id": 253}, "user": {"role": null}}}, "resource": {"owner": {"id": 449}, "assignee": {"id": 574}, "organization": {"id": 182}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_NONE_resource_user_num_resources_1_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 20, "privilege": "worker"}, "organization": {"id": 165, "owner": {"id": 296}, "user": {"role": null}}}, "resource": {"owner": {"id": 441}, "assignee": {"id": 510}, "organization": {"id": 165}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_NONE_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 94, "privilege": "worker"}, "organization": {"id": 199, "owner": {"id": 233}, "user": {"role": null}}}, "resource": {"owner": {"id": 421}, "assignee": {"id": 578}, "organization": {"id": 199}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_WORKER_membership_NONE_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 64, "privilege": "worker"}, "organization": {"id": 134, "owner": {"id": 266}, "user": {"role": null}}}, "resource": {"owner": {"id": 443}, "assignee": {"id": 578}, "organization": {"id": 134}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_OWNER_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 28, "privilege": "none"}, "organization": {"id": 112, "owner": {"id": 28}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 419}, "assignee": {"id": 559}, "organization": {"id": 623}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_OWNER_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 7, "privilege": "none"}, "organization": {"id": 101, "owner": {"id": 7}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 492}, "assignee": {"id": 586}, "organization": {"id": 625}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_OWNER_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 27, "privilege": "none"}, "organization": {"id": 131, "owner": {"id": 27}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 450}, "assignee": {"id": 554}, "organization": {"id": 622}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_OWNER_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 15, "privilege": "none"}, "organization": {"id": 110, "owner": {"id": 15}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 451}, "assignee": {"id": 505}, "organization": {"id": 609}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_OWNER_resource_user_num_resources_0_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 27, "privilege": "none"}, "organization": {"id": 165, "owner": {"id": 27}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 497}, "assignee": {"id": 571}, "organization": {"id": 165}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_OWNER_resource_user_num_resources_1_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 29, "privilege": "none"}, "organization": {"id": 158, "owner": {"id": 29}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 463}, "assignee": {"id": 507}, "organization": {"id": 158}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_OWNER_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 14, "privilege": "none"}, "organization": {"id": 168, "owner": {"id": 14}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 476}, "assignee": {"id": 561}, "organization": {"id": 168}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_OWNER_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 57, "privilege": "none"}, "organization": {"id": 130, "owner": {"id": 57}, "user": {"role": "owner"}}}, "resource": {"owner": {"id": 464}, "assignee": {"id": 521}, "organization": {"id": 130}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_MAINTAINER_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 77, "privilege": "none"}, "organization": {"id": 141, "owner": {"id": 296}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 461}, "assignee": {"id": 557}, "organization": {"id": 681}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_MAINTAINER_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 20, "privilege": "none"}, "organization": {"id": 100, "owner": {"id": 236}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 471}, "assignee": {"id": 585}, "organization": {"id": 650}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_MAINTAINER_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 98, "privilege": "none"}, "organization": {"id": 156, "owner": {"id": 201}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 445}, "assignee": {"id": 565}, "organization": {"id": 619}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_MAINTAINER_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 49, "privilege": "none"}, "organization": {"id": 115, "owner": {"id": 293}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 462}, "assignee": {"id": 599}, "organization": {"id": 621}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_MAINTAINER_resource_user_num_resources_0_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 94, "privilege": "none"}, "organization": {"id": 111, "owner": {"id": 209}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 448}, "assignee": {"id": 580}, "organization": {"id": 111}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_MAINTAINER_resource_user_num_resources_1_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 9, "privilege": "none"}, "organization": {"id": 124, "owner": {"id": 275}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 415}, "assignee": {"id": 584}, "organization": {"id": 124}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_MAINTAINER_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 53, "privilege": "none"}, "organization": {"id": 191, "owner": {"id": 283}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 441}, "assignee": {"id": 504}, "organization": {"id": 191}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_MAINTAINER_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 54, "privilege": "none"}, "organization": {"id": 179, "owner": {"id": 201}, "user": {"role": "maintainer"}}}, "resource": {"owner": {"id": 475}, "assignee": {"id": 520}, "organization": {"id": 179}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_SUPERVISOR_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 78, "privilege": "none"}, "organization": {"id": 149, "owner": {"id": 220}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 497}, "assignee": {"id": 526}, "organization": {"id": 614}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_SUPERVISOR_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 6, "privilege": "none"}, "organization": {"id": 174, "owner": {"id": 249}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 475}, "assignee": {"id": 505}, "organization": {"id": 617}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_SUPERVISOR_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 49, "privilege": "none"}, "organization": {"id": 138, "owner": {"id": 234}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 442}, "assignee": {"id": 573}, "organization": {"id": 638}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_SUPERVISOR_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 17, "privilege": "none"}, "organization": {"id": 155, "owner": {"id": 288}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 451}, "assignee": {"id": 559}, "organization": {"id": 685}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_SUPERVISOR_resource_user_num_resources_0_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 65, "privilege": "none"}, "organization": {"id": 195, "owner": {"id": 263}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 487}, "assignee": {"id": 598}, "organization": {"id": 195}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_SUPERVISOR_resource_user_num_resources_1_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 23, "privilege": "none"}, "organization": {"id": 140, "owner": {"id": 263}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 415}, "assignee": {"id": 546}, "organization": {"id": 140}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_SUPERVISOR_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 53, "privilege": "none"}, "organization": {"id": 143, "owner": {"id": 257}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 420}, "assignee": {"id": 565}, "organization": {"id": 143}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_SUPERVISOR_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 7, "privilege": "none"}, "organization": {"id": 143, "owner": {"id": 279}, "user": {"role": "supervisor"}}}, "resource": {"owner": {"id": 450}, "assignee": {"id": 595}, "organization": {"id": 143}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_WORKER_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 88, "privilege": "none"}, "organization": {"id": 102, "owner": {"id": 289}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 444}, "assignee": {"id": 575}, "organization": {"id": 614}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_WORKER_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 79, "privilege": "none"}, "organization": {"id": 146, "owner": {"id": 297}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 428}, "assignee": {"id": 595}, "organization": {"id": 686}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_WORKER_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 76, "privilege": "none"}, "organization": {"id": 170, "owner": {"id": 270}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 483}, "assignee": {"id": 508}, "organization": {"id": 632}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_WORKER_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 98, "privilege": "none"}, "organization": {"id": 166, "owner": {"id": 252}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 451}, "assignee": {"id": 568}, "organization": {"id": 657}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_WORKER_resource_user_num_resources_0_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 21, "privilege": "none"}, "organization": {"id": 153, "owner": {"id": 225}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 491}, "assignee": {"id": 519}, "organization": {"id": 153}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_WORKER_resource_user_num_resources_1_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 71, "privilege": "none"}, "organization": {"id": 117, "owner": {"id": 288}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 489}, "assignee": {"id": 509}, "organization": {"id": 117}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_WORKER_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 20, "privilege": "none"}, "organization": {"id": 127, "owner": {"id": 223}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 494}, "assignee": {"id": 541}, "organization": {"id": 127}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_WORKER_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 93, "privilege": "none"}, "organization": {"id": 196, "owner": {"id": 208}, "user": {"role": "worker"}}}, "resource": {"owner": {"id": 421}, "assignee": {"id": 582}, "organization": {"id": 196}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_NONE_resource_user_num_resources_0_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 49, "privilege": "none"}, "organization": {"id": 144, "owner": {"id": 232}, "user": {"role": null}}}, "resource": {"owner": {"id": 473}, "assignee": {"id": 543}, "organization": {"id": 638}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_NONE_resource_user_num_resources_1_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 4, "privilege": "none"}, "organization": {"id": 178, "owner": {"id": 249}, "user": {"role": null}}}, "resource": {"owner": {"id": 487}, "assignee": {"id": 523}, "organization": {"id": 692}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_NONE_resource_user_num_resources_3_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 89, "privilege": "none"}, "organization": {"id": 148, "owner": {"id": 271}, "user": {"role": null}}}, "resource": {"owner": {"id": 430}, "assignee": {"id": 559}, "organization": {"id": 696}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_NONE_resource_user_num_resources_10_same_org_FALSE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 90, "privilege": "none"}, "organization": {"id": 176, "owner": {"id": 291}, "user": {"role": null}}}, "resource": {"owner": {"id": 433}, "assignee": {"id": 593}, "organization": {"id": 600}, "user": {"num_resources": 10}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_NONE_resource_user_num_resources_0_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 13, "privilege": "none"}, "organization": {"id": 184, "owner": {"id": 279}, "user": {"role": null}}}, "resource": {"owner": {"id": 472}, "assignee": {"id": 590}, "organization": {"id": 184}, "user": {"num_resources": 0}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_NONE_resource_user_num_resources_1_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 16, "privilege": "none"}, "organization": {"id": 120, "owner": {"id": 205}, "user": {"role": null}}}, "resource": {"owner": {"id": 495}, "assignee": {"id": 574}, "organization": {"id": 120}, "user": {"num_resources": 1}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_NONE_resource_user_num_resources_3_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 56, "privilege": "none"}, "organization": {"id": 132, "owner": {"id": 279}, "user": {"role": null}}}, "resource": {"owner": {"id": 415}, "assignee": {"id": 527}, "organization": {"id": 132}, "user": {"num_resources": 3}}}
}

test_scope_CREATE_context_ORGANIZATION_ownership_NONE_privilege_NONE_membership_NONE_resource_user_num_resources_10_same_org_TRUE {
    not allow with input as {"scope": "create", "auth": {"user": {"id": 84, "privilege": "none"}, "organization": {"id": 119, "owner": {"id": 260}, "user": {"role": null}}}, "resource": {"owner": {"id": 458}, "assignee": {"id": 533}, "organization": {"id": 119}, "user": {"num_resources": 10}}}
}



# projects_test.gen.rego.py
# # Copyright (C) 2021 Intel Corporation
# #
# # SPDX-License-Identifier: MIT
#
# # Copyright (C) 2021 Intel Corporation
# #
# # SPDX-License-Identifier: MIT
#
# import csv
# import json
# import random
# import sys
# import os
# from itertools import product
#
# NAME = 'projects'
#
# def read_rules(name):
#     rules = []
#     with open(os.path.join(sys.argv[1], f'{name}.csv')) as f:
#         reader = csv.DictReader(f)
#         for row in reader:
#             row = {k.lower():v.lower().replace('n/a','na') for k,v in row.items()}
#             row['limit'] = row['limit'].replace('none', 'None')
#             found = False
#             for col,val in row.items():
#                 if col in ["limit", "method", "url"]:
#                     continue
#                 complex_val = [v.strip() for v in val.split(',')]
#                 if len(complex_val) > 1:
#                     found = True
#                     for item in complex_val:
#                         new_row = row.copy()
#                         new_row[col] = item
#                         rules.append(new_row)
#             if not found:
#                 rules.append(row)
#
#     return rules
#
# simple_rules = read_rules(NAME)
#
# SCOPES = {rule['scope'] for rule in simple_rules}
# CONTEXTS = ['sandbox', 'organization']
# OWNERSHIPS = ['owner', 'assignee', 'none']
# GROUPS = ['admin', 'business', 'user', 'worker', 'none']
# ORG_ROLES = ['owner', 'maintainer', 'supervisor', 'worker', None]
# SAME_ORG = [False, True]
#
# def RESOURCES(scope):
#     if scope == 'list':
#         return [None]
#     elif scope == 'create':
#         return [{
#             "owner": { "id": random.randrange(400, 500) },
#             "assignee": { "id": random.randrange(500, 600) },
#             "organization": {
#                 "id": random.randrange(600, 700)
#             },
#             "user": {
#                 "num_resources": count
#             }
#         } for count in (0, 1, 3, 10)]
#     else:
#         return [{
#             "id": random.randrange(300, 400),
#             "owner": { "id": random.randrange(400, 500) },
#             "assignee": { "id": random.randrange(500, 600) },
#             "organization": {
#                 "id": random.randrange(600, 700)
#             }
#         }]
#
#
# def is_same_org(org1, org2):
#     if org1 != None and org2 != None:
#         return org1['id'] == org2['id']
#     elif org1 == None and org2 == None:
#         return True
#     else:
#         return False
#
# def eval_rule(scope, context, ownership, privilege, membership, data):
#     if privilege == 'admin':
#         return True
#
#     rules = list(filter(lambda r: scope == r['scope'], simple_rules))
#     rules = list(filter(lambda r: r['context'] == 'na' or context == r['context'], rules))
#     rules = list(filter(lambda r: r['ownership'] == 'na' or ownership == r['ownership'], rules))
#     rules = list(filter(lambda r: r['membership'] == 'na' or
#         ORG_ROLES.index(membership) <= ORG_ROLES.index(r['membership']), rules))
#     rules = list(filter(lambda r: GROUPS.index(privilege) <= GROUPS.index(r['privilege']), rules))
#     resource = data['resource']
#     rules = list(filter(lambda r: not r['limit'] or eval(r['limit'], {'resource': resource}), rules))
#     if not is_same_org(data['auth']['organization'], data['resource']['organization']) and context != 'sandbox':
#         return False
#
#     return bool(rules)
#
# def get_data(scope, context, ownership, privilege, membership, resource, same_org):
#     data = {
#         "scope": scope,
#         "auth": {
#             "user": { "id": random.randrange(0,100), "privilege": privilege },
#             "organization": {
#                 "id": random.randrange(100,200),
#                 "owner": { "id": random.randrange(200, 300) },
#                 "user": { "role": membership }
#             } if context == 'organization' else None
#         },
#         "resource": resource
#     }
#
#     user_id = data['auth']['user']['id']
#     if context == 'organization':
#         org_id = data['auth']['organization']['id']
#         if data['auth']['organization']['user']['role'] == 'owner':
#             data['auth']['organization']['owner']['id'] = user_id
#
#         if same_org:
#             data['resource']['organization']['id'] = org_id
#
#     if ownership == 'owner':
#         data['resource']['owner']['id'] = user_id
#
#     if ownership == 'assignee':
#         data['resource']['assignee']['id'] = user_id
#
#     return data
#
# def _get_name(prefix, **kwargs):
#     name = prefix
#     for k,v in kwargs.items():
#         prefix = '_' + str(k)
#         if isinstance(v, dict):
#             if 'id' in v:
#                 v = v.copy()
#                 v.pop('id')
#             if v:
#                 name += _get_name(prefix, **v)
#         else:
#             name += f'{prefix}_{str(v).upper().replace(":", "_")}'
#
#     return name
#
# def get_name(scope, context, ownership, privilege, membership, resource, same_org):
#     return _get_name('test', **locals())
#
# def is_valid(scope, context, ownership, privilege, membership, resource, same_org):
#     if context == "sandbox" and membership:
#         return False
#     if scope == 'list' and ownership != 'None':
#         return False
#     if context == 'sandbox' and same_org == False:
#         return False
#
#     return True
#
# def gen_test_rego(name):
#     with open(f'{name}_test.gen.rego', 'wt') as f:
#         f.write(f'package {name}\n\n')
#         for scope, context, ownership, privilege, membership, same_org in product(
#             SCOPES, CONTEXTS, OWNERSHIPS, GROUPS, ORG_ROLES, SAME_ORG):
#             for resource in RESOURCES(scope):
#                 if not is_valid(scope, context, ownership, privilege, membership, resource, same_org):
#                     continue
#
#                 data = get_data(scope, context, ownership, privilege, membership, resource, same_org)
#                 test_name = get_name(scope, context, ownership, privilege, membership, resource, same_org)
#                 result = eval_rule(scope, context, ownership, privilege, membership, data)
#                 f.write('{test_name} {{\n    {allow} with input as {data}\n}}\n\n'.format(
#                     test_name=test_name, allow='allow' if result else 'not allow',
#                     data=json.dumps(data)))
#
#         # Write the script which is used to generate the file
#         with open(sys.argv[0]) as this_file:
#             f.write(f'\n\n# {os.path.split(sys.argv[0])[1]}\n')
#             for line in this_file:
#                 if line.strip():
#                     f.write(f'# {line}')
#                 else:
#                     f.write(f'#\n')
#
#         # Write rules which are used to generate the file
#         with open(os.path.join(sys.argv[1], f'{name}.csv')) as rego_file:
#             f.write(f'\n\n# {name}.csv\n')
#             for line in rego_file:
#                 if line.strip():
#                     f.write(f'# {line}')
#                 else:
#                     f.write(f'#\n')
#
# gen_test_rego(NAME)

# projects.csv
# Scope,Resource,Context,Ownership,Limit,Method,URL,Privilege,Membership
# create,Project,Sandbox,N/A,"resource[""user""][""num_resources""] < 3",POST,/projects,User,N/A
# create,Project,Organization,N/A,"resource[""user""][""num_resources""] < 3",POST,/projects,User,Supervisor
# create,Project,Sandbox,N/A,,POST,/projects,Business,N/A
# create,Project,Organization,N/A,,POST,/projects,Business,Supervisor
# list,Project,Sandbox,N/A,,GET,/projects,None,N/A
# list,Project,Organization,N/A,,GET,/projects,None,Worker
# view,Project,Sandbox,None,,GET,/projects/{id},Admin,N/A
# view,Project,Sandbox,"Owner, Assignee",,GET,/projects/{id},None,N/A
# view,Project,Organization,"Owner, Assignee, None",,GET,/projects/{id},None,Worker
# delete,Project,Sandbox,"None, Assignee",,DELETE,/projects/{id},Admin,N/A
# delete,Project,Sandbox,Owner,,DELETE,/projects/{id},Worker,N/A
# delete,Project,Organization,Owner,,DELETE,/projects/{id},Worker,Worker
# delete,Project,Organization,"None, Assignee",,DELETE,/projects/{id},User,Maintainer
# update:desc,Project,Sandbox,None,,PATCH,/projects/{id},Admin,N/A
# update:desc,Project,Sandbox,"Owner, Assignee",,PATCH,/projects/{id},Worker,N/A
# update:desc,Project,Organization,"Owner, Assignee",,PATCH,/projects/{id},Worker,Worker
# update:desc,Project,Organization,None,,PATCH,/projects/{id},User,Maintainer
# update:assignee,Project,Sandbox,"None, Assignee",,PATCH,/projects/{id},Admin,N/A
# update:assignee,Project,Sandbox,Owner,,PATCH,/projects/{id},Worker,N/A
# update:assignee,Project,Organization,Owner,,PATCH,/projects/{id},Worker,Worker
# update:assignee,Project,Organization,"None, Assignee",,PATCH,/projects/{id},User,Maintainer
# update:owner,Project,Sandbox,"None, Assignee, Owner",,PATCH,/projects/{id},Admin,N/A
# update:owner,Project,Organization,"None, Assignee",,PATCH,/projects/{id},User,Maintainer
# update:owner,Project,Organization,Owner,,PATCH,/projects/{id},Worker,Maintainer
# export:annotations,Project,Sandbox,None,,GET,/projects/{id}/annotations,Admin,N/A
# export:annotations,Project,Sandbox,"Owner, Assignee",,GET,/projects/{id}/annotations,None,N/A
# export:annotations,Project,Organization,"Owner, Assignee",,GET,/projects/{id}/annotations,None,Worker
# export:annotations,Project,Organization,None,,GET,/projects/{id}/annotations,Worker,Supervisor
# export:dataset,Project,Sandbox,None,,GET,/projects/{id}/dataset,Admin,N/A
# export:dataset,Project,Sandbox,"Owner, Assignee",,GET,/projects/{id}/dataset,None,N/A
# export:dataset,Project,Organization,"Owner, Assignee",,GET,/projects/{id}/dataset,None,Worker
# export:dataset,Project,Organization,None,,GET,/projects/{id}/dataset,Worker,Supervisor