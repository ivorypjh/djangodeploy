from django.shortcuts import render

# 함수 이름은 아무거나 사용하고 request 를 매개변수로 사용
def index(request):
    # index.html 파일을 렌더링
    return render(request, "index.html")