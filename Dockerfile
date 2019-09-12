FROM python:alpine

COPY requirements.txt /
RUN apk add git vim
RUN pip install -r /requirements.txt

COPY src/ /src
WORKDIR /

EXPOSE 80

CMD ["gunicorn","-w 4","-b 0.0.0.0:80", "src:app"]