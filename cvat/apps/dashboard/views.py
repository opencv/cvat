
# Copyright (C) 2018 Intel Corporation
#
# SPDX-License-Identifier: MIT

from django.http import HttpResponse, JsonResponse, HttpResponseBadRequest
from django.shortcuts import redirect
from django.shortcuts import render
from django.conf import settings
from django.contrib.auth.decorators import permission_required
from cvat.apps.authentication.decorators import login_required

from cvat.apps.engine.models import Task as TaskModel, Job as JobModel
from cvat.settings.base import JS_3RDPARTY

import os

def ScanNode(directory):
    if '..' in directory.split(os.path.sep):
        return HttpResponseBadRequest('Permission Denied')

    act_dir = os.path.normpath(settings.SHARE_ROOT + directory)
    result = []

    nodes = os.listdir(act_dir)
    files = filter(os.path.isfile, map(lambda f: os.path.join(act_dir, f), nodes))
    dirs = filter(os.path.isdir, map(lambda d: os.path.join(act_dir, d), nodes))

    for d in dirs:
        name = os.path.basename(d)
        children = len(os.listdir(d)) > 0
        node = {'id': directory + name + '/', 'text': name, 'children': children}
        result.append(node)

    for f in files:
        name = os.path.basename(f)
        node = {'id': directory + name, 'text': name, "icon" : "jstree-file"}
        result.append(node)

    return result

@login_required
@permission_required('engine.add_task', raise_exception=True)
def JsTreeView(request):
    node_id = None
    if 'id' in request.GET:
        node_id = request.GET['id']

    if node_id is None or node_id == '#':
        node_id = '/'
        response = [{"id": node_id, "text": node_id, "children": ScanNode(node_id)}]
    else:
        response = ScanNode(node_id)

    return JsonResponse(response, safe=False,
        json_dumps_params=dict(ensure_ascii=False))


def MainTaskInfo(task, dst_dict):
    dst_dict["status"] = task.status
    dst_dict["num_of_segments"] = task.segment_set.count()
    dst_dict["mode"] = task.mode.capitalize()
    dst_dict["name"] = task.name
    dst_dict["task_id"] = task.id
    dst_dict["created_date"] = task.created_date
    dst_dict["updated_date"] = task.updated_date
    dst_dict["bug_tracker_link"] = task.bug_tracker
    dst_dict["has_bug_tracker"] = len(task.bug_tracker) > 0
    dst_dict["owner"] = 'undefined'
    dst_dict["id"] = task.id
    dst_dict["segments"] = []

def DetailTaskInfo(request, task, dst_dict):
    scheme = request.scheme
    host = request.get_host()
    dst_dict['segments'] = []

    for segment in task.segment_set.all():
        for job in segment.job_set.all():
            segment_url = "{0}://{1}/?id={2}".format(scheme, host, job.id)
            dst_dict["segments"].append({
                'id': job.id,
                'start': segment.start_frame,
                'stop': segment.stop_frame,
                'url': segment_url
            })

    db_labels = task.label_set.prefetch_related('attributespec_set').all()
    attributes = {}
    for db_label in db_labels:
        attributes[db_label.id] = {}
        for db_attrspec in db_label.attributespec_set.all():
            attributes[db_label.id][db_attrspec.id] = db_attrspec.text

    dst_dict['labels'] = attributes

@login_required
@permission_required('engine.view_task', raise_exception=True)
def DashboardView(request):
    query_name = request.GET['search'] if 'search' in request.GET else None
    query_job = int(request.GET['jid']) if 'jid' in request.GET and request.GET['jid'].isdigit() else None
    query_page = None
    elements_per_page = 20
    task_list = None

    if query_job is not None and JobModel.objects.filter(pk = query_job).exists():
        task_list = [JobModel.objects.select_related('segment__task').get(pk = query_job).segment.task]
    else:
        task_list = list(TaskModel.objects.prefetch_related('segment_set').order_by('-created_date').all())
        if query_name is not None:
            task_list = list(filter(lambda x: query_name.lower() in x.name.lower(), task_list))
        query_page = int(request.GET['page']) if 'page' in request.GET and request.GET['page'].isdigit() else None

    if query_page is not None:
        start, stop = (query_page - 1) * elements_per_page, query_page * elements_per_page - 1    # 0, 19; 20, 39, 40, 59 etc
        task_list = [ None if idx < start or idx > stop else task for idx, task in enumerate(task_list) ]

    data = []
    for task in task_list:
        if task is not None:
            task_info = {}
            MainTaskInfo(task, task_info)
            DetailTaskInfo(request, task, task_info)
            data.append(task_info)
        else:
            data.append(None)

    return render(request, 'dashboard/dashboard.html', {
        'data': data,
        'max_upload_size': settings.LOCAL_LOAD_MAX_FILES_SIZE,
        'max_upload_count': settings.LOCAL_LOAD_MAX_FILES_COUNT,
        'tasks_per_page': elements_per_page,
        'share_path': os.getenv('CVAT_SHARE_URL', default=r'${cvat_root}/share'),
        'js_3rdparty': JS_3RDPARTY.get('dashboard', [])
    })
