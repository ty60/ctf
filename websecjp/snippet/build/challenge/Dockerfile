FROM python:3.6

ADD requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt

ADD . /app
WORKDIR /app

ENTRYPOINT ["./wait-for-it.sh", "mysql:3306", "--", "python", "app.py"]