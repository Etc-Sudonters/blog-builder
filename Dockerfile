FROM python:3-slim

RUN apt-get update && \
    apt-get install -y build-essential && \
    pip install pelican[markdown]

COPY ./entrypoint.sh /var/run/blog/entrypoint.sh

ENTRYPOINT ["/var/run/blog/entrypoint.sh"]
