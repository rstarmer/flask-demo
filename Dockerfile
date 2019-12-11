FROM python:alpine

COPY requirements.txt /
RUN apk add git vim && pip install -r /requirements.txt &&  mkdir -p /src/templates
COPY * /src/
COPY index.html /src/templates
WORKDIR /src

EXPOSE 80

CMD ["gunicorn","-w 4","-b 0.0.0.0:80", "app:app", "--log-file=-"]
