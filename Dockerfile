FROM python:3-slim

RUN apt-get update && \
    apt-get install -y build-essential

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY ./entrypoint.sh /var/run/blog/entrypoint.sh

ENTRYPOINT ["/var/run/blog/entrypoint.sh"]
