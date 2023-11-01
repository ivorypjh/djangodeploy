FROM python

# -y 옵션을 사용해서 dockerfile 에서 발생할 수 있는 에러를 예방
# 설치한 이후 데이터 캐시를 삭제
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app

# requirements 파일을 현재 위치로 복사
COPY requirements.txt ./

# 필요한 패키지 설치
RUN pip install -r requirements.txt
COPY . .

# 보통 여기까지는 파이썬 버전만 다르고 동일

# 포트 개방
# 일반 파이썬에서는 사용하지 않고 flask, django 등에서만 사용
EXPOSE 80

# 실행할 명령어 - terminal 에서 사용하는 django 실행 명령어
CMD ["python", "manage.py", "runserver", "0.0.0.0:80"]