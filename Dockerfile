FROM python:alpine

COPY requirements.txt /
RUN apk add git vim
RUN pip install -r /requirements.txt

MKDIR /src
COPY * /src
WORKDIR /src

EXPOSE 80

CMD ["gunicorn","-w 4","-b 0.0.0.0:80", "app:app", "--log-file=-"]
