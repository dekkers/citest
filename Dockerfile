FROM python:3.8

WORKDIR /app

COPY requirements.txt .
RUN --mount=type=cache,target=/root/.cache pip install --upgrade && pip install -r requirements.txt

COPY . .
