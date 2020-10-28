from module_website.models import Domain, WebsiteServer
from django.utils import timezone


def run():
    pass
    webservice = WebsiteServer.objects.first()

    with open(r'D:\work\闻睿\域名列表.txt', "r") as f:
        for line in f.readlines():
            line = line.replace("\n", "")
            d = Domain()
            d.host = webservice
            d.name = line
            d.email = "q@q.com"
            d.register_author = "firegame"
            d.register_business = "firegame"
            d.register_site = "www"
            d.register_date = timezone.now()
            d.update_date = timezone.now()
            d.expires_date = timezone.now()
            d.status = "ok"
            d.dns = "1.1.1.1"
            try:
                d.save()
            except Exception as e:
                print(e)
