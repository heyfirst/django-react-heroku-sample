FROM python:3.9.2

ARG POETRY_VERSION=1.1.4

RUN pip install --no-cache-dir poetry==${POETRY_VERSION}

WORKDIR /backend
COPY . .

RUN poetry install

CMD ["./entrypoint.sh"]