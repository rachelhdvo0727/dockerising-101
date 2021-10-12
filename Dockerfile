FROM python:3.8-slim-buster

ENV PYTHONUNBUFFERED=1

ADD requirements.txt /
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . /app/

COPY ./entrypoint.sh /
ENTRYPOINT ["sh", "/entrypoint.sh"]

