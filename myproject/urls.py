from django.contrib import admin
from django.urls import path
from .views import index
# views.py 파일에서 index 함수를 가져옴

# 기본 요청("")이 왔을 때 index 함수를 호출
urlpatterns = [
    path("", index),
]