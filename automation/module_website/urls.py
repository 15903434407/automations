from django.urls import path
from . import views


app_name = "module_website"
urlpatterns = [
    path('', views.websites_operator_view, name='web_site'),
    path('get_domain_config/', views.get_domain_config_view, name='get_domain_config_view'),
    path('setting_floorpage/', views.setting_floorpage_view, name='setting_floorpage_view'),

]