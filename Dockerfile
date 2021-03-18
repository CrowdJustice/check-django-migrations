FROM python:3.6-alpine

COPY entrypoint.sh /entrypoint.sh
COPY requirements.txt /requirements.txt

RUN pip install -r requirements.txt
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]