from django.shortcuts import render
from django.contrib.auth import authenticate, login, logout
from django.http import HttpResponseRedirect
from django.urls import reverse
from django.contrib.auth.decorators import login_required

from .forms import LoginViewForms

# Create your views here.
def login_view(request):
    return_dict = {}
    if request.method == "POST":
        form = LoginViewForms(request.POST)
        if form.is_valid():
            username = form.cleaned_data["username"]
            password = form.cleaned_data["password"]
            user = authenticate(request, username=username, password=password)
            if user is not None:
                login(request, user)
                # return HttpResponseRedirect(reverse('blog:article_list'))
                return HttpResponseRedirect(reverse('module_website:web_site'))
            else:
                info = "登录失败, 请确认账号与密码是否正确"
                return_dict.update({"info": info})

        else:
            info = "请按照要求填写参数不全"
            return_dict.update({"info": info})
    return render(request, 'front_end/login.html', return_dict)


def page_handler_404(request, *args, **kwargs):
    return HttpResponseRedirect(reverse('module_user:login'))


@login_required
def logout_view(request):
    logout(request)
    return HttpResponseRedirect(reverse('module_user:login'))