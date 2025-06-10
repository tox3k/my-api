FROM python:3.12-slim

WORKDIR /server

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

ENTRYPOINT [ "uvicorn", "main:app", "--port","80", "--host", "0.0.0.0"]