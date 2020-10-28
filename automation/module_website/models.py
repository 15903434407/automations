from threading import Thread
from django.db import models
from django.db.models.signals import post_save, pre_init, post_init
from django.dispatch import receiver
from django.conf import settings
from django_extensions.db.models import TimeStampedModel
from .website_communication import WebsiteCommunication
from .utils import get_host_ip
# Create your models here.


class Domain(TimeStampedModel):
    user = models.ForeignKey(verbose_name="域名所属", to=settings.AUTH_USER_MODEL, on_delete=models.SET_NULL, null=True, blank=True)
    host = models.ForeignKey(verbose_name="主机", to='WebsiteServer', on_delete=models.SET_NULL, null=True)
    name = models.CharField(verbose_name="域名", max_length=255, unique=True)
    email = models.EmailField(verbose_name="邮箱", max_length=255, null=True, blank=True)
    register_author = models.CharField(verbose_name="注册者", max_length=255, null=True, blank=True)
    register_business = models.CharField(verbose_name="注册商", max_length=255, null=True, blank=True)
    register_site = models.CharField(verbose_name="注册网址", max_length=255, null=True, blank=True)
    register_date = models.DateField(verbose_name="注册时间", null=True, blank=True)
    update_date = models.DateField(verbose_name="更新时间", null=True, blank=True)
    expires_date = models.DateField(verbose_name="过期时间", null=True, blank=True)
    status = models.CharField(verbose_name="状态", max_length=255, null=True, blank=True)
    dns = models.CharField(verbose_name="DNS", max_length=255, null=True, blank=True)

    def __str__(self):
        return f'{self.name}'

    class Meta:
        verbose_name = "域名"
        verbose_name_plural = "域名"
        ordering = ['-id']


class FloorPage(TimeStampedModel):
    name = models.CharField(verbose_name="名字", max_length=255)
    link = models.CharField(verbose_name="落地页", help_text='落地页的域名,不要附带协议',  max_length=255)
    language = models.CharField(verbose_name="语言", default="中文简体", max_length=255)

    def __str__(self):
        return f'{self.name}'

    class Meta:
        verbose_name = "落地页"
        verbose_name_plural = "落地页"
        ordering = ['-id']


class DomainConfig(TimeStampedModel):
    domain = models.OneToOneField(verbose_name="域名", to=Domain, on_delete=models.CASCADE)
    f_page = models.ForeignKey(verbose_name="落地页", to=FloorPage, on_delete=models.SET_NULL, null=True)
    block = models.BooleanField(verbose_name="开启/关闭", default=True)
    cnzz = models.TextField(verbose_name="CNZZ统计代码", )
    facebook = models.TextField(verbose_name="Facebook")
    is_save_service_info = models.BooleanField(verbose_name="是否保留客服与统计", default=True)

    def __str__(self):
        return f'{self.domain}'

    class Meta:
        verbose_name = "域名配置"
        verbose_name_plural = "域名配置"
        ordering = ['-id']


@receiver(post_init, sender=DomainConfig)
def domain_config_original_data(instance, **kwargs):
    instance.__original_domain = instance.domain
    instance.__original_f_page = instance.f_page
    instance.__original_block = instance.block
    instance.__original_cnzz = instance.cnzz
    instance.__original_facebook = instance.facebook
    instance.__original_is_save_service_info = instance.is_save_service_info


@receiver(post_save, sender=DomainConfig)
def sync_data(instance, sender, **kwargs):
    original_ip = get_host_ip()
    ws = WebsiteServer.objects.first()
    host = ws.ip
    ssh_account = ws.ssh_account
    ssh_password = ws.ssh_password
    ssh_port = ws.ssh_port
    local_host = ws.local_host
    www_root = ws.www_root

    wsc = WebsiteCommunication(host, ssh_port, ssh_account, ssh_password, local_host, www_root)

    if instance.__original_f_page == None or instance.f_page.link != instance.__original_f_page.link:
        print("进入1")
        rename_service_status = False
        if instance.is_save_service_info != instance.__original_is_save_service_info:
            if instance.is_save_service_info:
                origin_filename, new_filename = wsc.local_mode_rename_service(instance.domain.name) if original_ip == host or original_ip == local_host else wsc.rename_service(instance.domain.name)
                rename_service_status = True
        if instance.f_page != None:
            wsc.local_mode_move_dir(source_dir=instance.f_page.link, target_dir=instance.domain.name) if original_ip == host or original_ip == local_host else wsc.move_dir(source_dir=instance.f_page.link, target_dir=instance.domain.name)

            if instance.block != None:
                print("进入2")
                wsc.local_mode_change_block_status(instance.block, instance.domain.name) if original_ip == host or original_ip == local_host else wsc.change_block_status(instance.block, instance.domain.name)

            if instance.cnzz != None:
                print("进入3")
                if instance.cnzz != '':
                    wsc.local_mode_replace_cnzz(cnzz=instance.cnzz, target_dir=instance.domain.name) if original_ip == host or original_ip == local_host else wsc.replace_cnzz(cnzz=instance.cnzz, target_dir=instance.domain.name)

            if instance.facebook != None:
                print("进入4")
                if instance.facebook != '':

                    wsc.local_mode_replace_facebook(facebook=instance.facebook, target_dir=instance.domain.name) if original_ip == host or original_ip == local_host else wsc.replace_facebook(facebook=instance.facebook, target_dir=instance.domain.name)

        if rename_service_status:
            wsc.local_mode_restore_service(new_filename, origin_filename) if original_ip == host or original_ip == local_host else wsc.restore_service(new_filename, origin_filename)

    if instance.block != instance.__original_block:
        print("进入2")
        wsc.local_mode_change_block_status(instance.block, instance.domain.name) if original_ip == host or original_ip == local_host else wsc.change_block_status(instance.block, instance.domain.name)

    if instance.cnzz != instance.__original_cnzz:
        print("进入3")
        if instance.cnzz != '':
            wsc.local_mode_replace_cnzz(cnzz=instance.cnzz, target_dir=instance.domain.name) if original_ip == host or original_ip == local_host else wsc.replace_cnzz(cnzz=instance.cnzz, target_dir=instance.domain.name)


    if instance.facebook != instance.__original_facebook:
        print("进入4")
        if instance.facebook != '':
            wsc.local_mode_replace_facebook(facebook=instance.facebook, target_dir=instance.domain.name) if original_ip == host or original_ip == local_host else wsc.replace_facebook(facebook=instance.facebook, target_dir=instance.domain.name)
    del wsc


class DomainContact(TimeStampedModel):
    status = models.CharField(verbose_name="状态", max_length=255)
    module_info = models.CharField(verbose_name="模板信息", max_length=255)
    company_name = models.CharField(verbose_name="企业名称", max_length=255)
    contact = models.CharField(verbose_name="联系人", max_length=255)
    email = models.EmailField(verbose_name="邮箱", max_length=255)
    country_code = models.CharField(verbose_name="国家代码", max_length=255)
    province = models.CharField(verbose_name="省份", max_length=255)
    city = models.CharField(verbose_name="城市", max_length=255)
    address = models.CharField(verbose_name="详细地址", max_length=255)
    postman = models.CharField(verbose_name="邮编", max_length=12)
    phone = models.CharField(verbose_name="电话", max_length=16)

    def __str__(self):
        return f'{self.status}'

    class Meta:
        verbose_name = "域名联系人"
        verbose_name_plural = "域名联系人"
        ordering = ['-id']


class Statistics(TimeStampedModel):
    name = models.CharField(verbose_name="统计名称", max_length=255)
    code = models.TextField(verbose_name="统计代码")

    def __str__(self):
        return f'{self.name}'

    class Meta:
        verbose_name = "数据统计"
        verbose_name_plural = "数据统计"
        ordering = ['-id']


class WebsiteServer(TimeStampedModel):
    ip = models.GenericIPAddressField(protocol='both')
    ssh_account = models.CharField(verbose_name="ssh账号", max_length=255)
    ssh_password = models.CharField(verbose_name="ssh密码", max_length=255)
    ssh_port = models.IntegerField(verbose_name="ssh端口")
    local_host = models.CharField(verbose_name="内网IP", max_length=255, null=True)
    server_tag = models.CharField(verbose_name="服务器编号", max_length=255, null=True, blank=True)
    www_root = models.CharField(verbose_name="网站根目录", max_length=255, null=True, blank=True)

    def __str__(self):
        return f'{self.ip}'

    class Meta:
        verbose_name = "服务器信息"
        verbose_name_plural = "服务器信息"
