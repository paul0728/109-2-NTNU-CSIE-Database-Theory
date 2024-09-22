from django.contrib import admin
from django.urls import path

from .views import (
    search,
    comment,
)


urlpatterns = [
    path('', search, name='search'),
    path('<str:c_id>/',comment, name='comment'),
    #path('<str:pk>/delete/',CommentDeleteView.as_view(),name='comment_delete')
    #path('post/<int:pk>/update/', PostUpdateView.as_view(), name='post-update'),
    #path('post/<int:pk>/delete/', PostDeleteView.as_view(), name='post-delete'),

    
]
