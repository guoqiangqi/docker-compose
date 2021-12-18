FROM alpine/git:v2.32.0
RUN git clone https://gitee.com/sunmao-dx/data-cache /data-cache


FROM python:3.8-alpine
RUN pip install flask_restful requests pika
COPY --from=0 /data-cache /data-cache

CMD ["python", "/data-cache/app.py"]
