# Copyright (C) 2018-2022 Intel Corporation
#
# SPDX-License-Identifier: MIT

"""CVAT URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""

from django.apps import apps
from django.contrib import admin
from django.urls import path, include, re_path
from django.views.generic import RedirectView
from django.templatetags.static import static
from cvat.apps.rebotics.views import index_view


urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('cvat.apps.engine.urls')),
    path('django-rq/', include('django_rq.urls')),
]

if apps.is_installed('cvat.apps.dataset_repo'):
    urlpatterns.append(path('git/repository/', include('cvat.apps.dataset_repo.urls')))

if apps.is_installed('cvat.apps.log_viewer'):
    urlpatterns.append(path('', include('cvat.apps.log_viewer.urls')))

if apps.is_installed('cvat.apps.lambda_manager'):
    urlpatterns.append(path('', include('cvat.apps.lambda_manager.urls')))

if apps.is_installed('cvat.apps.opencv'):
    urlpatterns.append(path('opencv/', include('cvat.apps.opencv.urls')))

if apps.is_installed('cvat.apps.webhooks'):
    urlpatterns.append(path('api/', include('cvat.apps.webhooks.urls')))

if apps.is_installed('silk'):
    urlpatterns.append(path('profiler/', include('silk.urls')))


urlpatterns += [
    path('version.txt', RedirectView.as_view(url=static('version.txt'), permanent=True), name='version'),
    path('favicon.ico', RedirectView.as_view(url=static('favicon.ico'), permanent=True), name='favicon'),

    re_path(r'(?P<url>.*)$', index_view, name='index'),
]
