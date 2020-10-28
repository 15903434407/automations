from django.shortcuts import render
from django.http import HttpResponse

def home(request):
    print(request.META)
    print("----------------------------")
    print(request.headers)

    print(request.META.get("REMOTE_ADDR"))
    print(request.META.get("REQUEST_METHOD"))
    print(request.META.get("SERVER_PROTOCOL"))
    print(request.META.get("HTTP_USER_AGENT"))

    with open("./firewall.txt", 'a+', encoding="utf-8") as f:
        f.write(f"""headers: {request.headers} \nremote_addr: {request.META.get("REMOTE_ADDR")}\nREQUEST_METHOD: {request.META.get("REQUEST_METHOD")}\nSERVER_PROTOCOL: {request.META.get("SERVER_PROTOCOL")}\n HTTP_USER_AGENT: {request.META.get("HTTP_USER_AGENT")}\n------------\n""")

    return HttpResponse("Hello FaceBook")
    return render(request, 'index.html')
