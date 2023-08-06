#!/bin/bash

pip install django

django-admin startproject myproject

cd myproject

python manage.py startapp helloworld

echo "from django.http import HttpResponse

def hello_world(request):
    return HttpResponse('Hello, World!')" > helloworld/views.py

echo "from django.urls import path
from helloworld.views import hello_world

urlpatterns = [
    path('hello/', hello_world),
]" > myproject/urls.py

python manage.py runserver 8000