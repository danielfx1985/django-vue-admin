#!/bin/bash

 python manage.py makemigrations
 python manage.py migrate
 python manage.py init -y
#gunicorn -c gunicorn_conf.py application.asgi:application
uvicorn application.asgi:application --port 8000 --host 0.0.0.0 --workers 4
#python manage.py runserver 0.0.0.0:80
