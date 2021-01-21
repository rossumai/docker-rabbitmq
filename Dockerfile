FROM bitnami/rabbitmq:3.8.10-debian-10-r0

USER root

RUN apt-get update -y \
    && apt-get install wget -y \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && wget https://github.com/rabbitmq/rabbitmq-message-timestamp/releases/download/v3.8.0/rabbitmq_message_timestamp-3.8.0.ez \
    && mv rabbitmq_message_timestamp-3.8.0.ez /plugins

USER 1001
