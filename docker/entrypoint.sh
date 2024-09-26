#!/bin/bash
set -e

exec gunicorn --bind 0.0.0.0:8000 --workers 6 --threads 4 --timeout 900 "main:create_app()"
