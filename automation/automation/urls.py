"""automation URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.0/topics/http/urls/
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
from django.contrib import admin
from django.urls import path, include
from django.conf import settings
from django.conf.urls.static import static
from django.conf.urls import handler400, handler403, handler404, handler500
from module_user import views

admin.site.site_header = 'FireGame系统'
admin.site.site_title = 'FireGame系统'
admin.site.index_title = 'FireGame系统'

urlpatterns = [
    path('admin/', admin.site.urls),
    path('user/', include('module_user.urls', namespace='module_user')),
    path('', include('module_website.urls', namespace='module_website')),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)