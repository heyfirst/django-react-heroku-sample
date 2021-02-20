FROM python:3.9.2-slim

ARG POETRY_VERSION=1.1.4

RUN pip install --no-cache-dir poetry==${POETRY_VERSION}

WORKDIR /backend
COPY . .

RUN poetry install

CMD ["poetry", "run", "python", "./backend/manage.py", "runserver", "0.0.0.0:8000"]