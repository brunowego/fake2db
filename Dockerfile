FROM python:3.7-alpine3.9

RUN pip install fake2db

ENTRYPOINT [ "fake2db" ]
