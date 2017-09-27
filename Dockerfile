FROM python:2.7-alpine

COPY requirements.txt /
COPY restore_db_from_snapshot.sh /

RUN apk update
RUN apk add jq

RUN pip install -r /requirements.txt

ENTRYPOINT ["sh", "/restore_db_from_snapshot.sh"]
