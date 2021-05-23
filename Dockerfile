FROM python:3

COPY templates /usr/local/templates

COPY location /usr/local/location

COPY geolocation /usr/local/geolocation

COPY db.sqlite3 /usr/local 

ADD manage.py / templates / location / geolocation / db.sqlite3 /

RUN pip install -r ../requirments.txt

RUN python manage.py runserver

EXPOSE 8080