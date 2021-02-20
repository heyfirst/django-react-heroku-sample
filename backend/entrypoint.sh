#!/bin/bash
cd backend

# Apply database migrations
echo "Apply database migrations"
poetry run python manage.py migrate

# create local superuser
echo "from django.contrib.auth.models import User; User.objects.create_superuser('admin', 'admin@example.com', 'admin')" | poetry run python manage.py shell

# Start server
echo "Starting server"
poetry run python manage.py runserver 0.0.0.0:8000

