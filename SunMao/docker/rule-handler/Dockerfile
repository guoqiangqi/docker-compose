FROM alpine/git:v2.32.0
RUN git clone https://gitee.com/sunmao-dx/mindspore-event-rulehandler.git /rule-handler

FROM python:3.8-alpine
RUN apk add g++
RUN pip install Flask pandas

COPY --from=0 /rule-handler /rule-handler
WORKDIR /rule-handler
ENV FLASK_APP rule_handler_app.py
CMD ["flask", "run"]
