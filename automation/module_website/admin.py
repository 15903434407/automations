from django.contrib import admin
from guardian.admin import GuardedModelAdmin
from .models import Domain, DomainContact, Statistics, FloorPage, DomainConfig, WebsiteServer
# Register your models here.

class DomainAdmin(GuardedModelAdmin):
    list_filter = ('user',)


class DomainContactAdmin(GuardedModelAdmin):
    pass


class StatisticsAdmin(GuardedModelAdmin):
    pass


class FloorPageAdmin(GuardedModelAdmin):
    pass


class DomainConfigAdmin(GuardedModelAdmin):
    pass


class WebsiteServerAdmin(GuardedModelAdmin):
    pass


admin.site.register(Domain, DomainAdmin)
admin.site.register(DomainContact, DomainContactAdmin)
admin.site.register(Statistics, StatisticsAdmin)
admin.site.register(FloorPage, FloorPageAdmin)
admin.site.register(DomainConfig, DomainConfigAdmin)
admin.site.register(WebsiteServer, WebsiteServerAdmin)
