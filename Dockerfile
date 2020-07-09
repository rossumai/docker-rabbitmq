FROM rabbitmq:3.8.2-alpine

RUN wget https://github.com/rabbitmq/rabbitmq-message-timestamp/releases/download/v3.8.0/rabbitmq_message_timestamp-3.8.0.ez && \
    mv rabbitmq_message_timestamp-3.8.0.ez /plugins/

