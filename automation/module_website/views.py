from django.shortcuts import render
from django.http import HttpResponse, JsonResponse
from django.core.paginator import Paginator
from django.contrib.auth.decorators import login_required
from django.views.decorators.http import require_http_methods, require_GET, require_POST
from django.core import serializers
from .models import Domain, DomainConfig, FloorPage
from .forms import GetDomainConfigViewForms, SettingFloorpageViewForm

# Create your views here.
@login_required
def websites_operator_view(request):
    return_dict = {}
    search_domain = request.GET.get("search_domain")
    if search_domain:
        # domain_obj = Domain.objects.filter(name=search_domain)
        domain_obj = request.user.domain_set.filter(name=search_domain)
        if domain_obj.exists():
            return_dict.update({"domain_list": domain_obj})
    else:
        # domain_list = Domain.objects.all()
        domain_list = request.user.domain_set.all()
        current_page = Paginator(domain_list, 10)
        page_number = request.GET.get('page')
        page_obj = current_page.get_page(page_number)
        return_dict.update({"domain_list": page_obj})

    floor_page_objects = FloorPage.objects.all()
    return_dict.update({"floor_page_objects": floor_page_objects})
    return render(request, 'front_end/websites_operator.html', return_dict)


@require_POST
@login_required
def get_domain_config_view(request):
    return_dict = {}
    form = GetDomainConfigViewForms(request.POST)
    if form.is_valid():
        domain_id = form.cleaned_data["domain_id"]
        domain = request.user.domain_set.filter(id=domain_id)
        if domain.exists():
            domain_config_s = DomainConfig.objects.filter(domain_id=domain_id)
            if domain_config_s.exists():
                data = {
                    "f_page_id": domain_config_s[0].f_page.id,
                    "f_page_name": domain_config_s[0].f_page.name,
                    "f_page_link": domain_config_s[0].f_page.link,
                    "f_page_language": domain_config_s[0].f_page.language,
                    "block": domain_config_s[0].block,
                    "cnzz": domain_config_s[0].cnzz,
                    "facebook": domain_config_s[0].facebook,
                    "is_save_service_info": domain_config_s[0].is_save_service_info,
                }
                return_dict.update({"data": data, "code": 200})
            else:
                return_dict.update({"code": 401})
        else:
            return_dict.update({"code": 401})

    else:
        return_dict.update({"code": 400})
    return JsonResponse(return_dict)


@require_POST
@login_required
def setting_floorpage_view(request):
    return_dict = {}
    form = SettingFloorpageViewForm(request.POST)
    if form.is_valid():
        current_domain_id = form.cleaned_data["current_domain_id"]
        current_domain_objs = request.user.domain_set.filter(id=current_domain_id)
        if current_domain_objs.exists():
            block_func = form.cleaned_data["block_func"]
            floorpage_id = form.cleaned_data["floorpage_id"]
            config_cnzz = form.cleaned_data["config_cnzz"]
            config_facebook = form.cleaned_data["config_facebook"]
            is_save_service_info = form.cleaned_data["is_save_service_info"]
            floorpage_objs = FloorPage.objects.filter(id=floorpage_id)
            if floorpage_objs.exists():
                dc, created = DomainConfig.objects.get_or_create(domain_id=current_domain_id)
                dc.f_page = floorpage_objs[0]
                dc.block = block_func
                dc.cnzz = config_cnzz
                dc.facebook = config_facebook
                dc.is_save_service_info = is_save_service_info
                dc.save()
                return_dict.update({"code": 200, "info": "保存成功"})
            else:
                return_dict.update({"code": 401, "info": "落地页不存在"})
        else:
            return_dict.update({"code": 401, "info": "落地页不存在"})
    else:
        print(form.errors)
        return_dict.update({"code": 400, "info": "参数不全"})
    return JsonResponse(return_dict)


