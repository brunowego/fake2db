FROM python:3.7-alpine3.9

RUN apk add --no-cache mysql build-base postgresql-dev mongodb

RUN pip install mysql-connector-python psycopg2 pymongo redis couchdb fake2db

WORKDIR /usr/data/dump

ENTRYPOINT [ "fake2db" ]
