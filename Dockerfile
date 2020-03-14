FROM python:3.8.2-alpine3.11
ADD . /app
WORKDIR /app
RUN pip install --target=/app requests
RUN chmod +x /app/script.sh
ENTRYPOINT ["/app/script.sh"]