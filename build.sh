#!/bin/bash
# Ensure virtualenv exists
pip install virtualenv

virtualenv venv


source ./venv/bin/activate

pip install --default-timeout=120 --retries 5 --resume-retries -r requirements.txt

cd faceit

python manage.py migrate --noinput
