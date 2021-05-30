FROM python:3.8
ENV PYTHONUNBUFFERED 1
RUN mkdir -p /app
WORKDIR /app
COPY requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt
COPY . /app

CMD python manage.py runserver https://main-geoloca-i3gjsy48376n83ie-gtw.qovery.io/
