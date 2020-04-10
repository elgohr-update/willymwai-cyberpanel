#!/bin/bash

python manage.py migrate
export C_FORCE_ROOT="true"
gunicorn CyberCP.wsgi -b 0.0.0.0:8000 -w 2 -t 240