FROM bitnami/rabbitmq:3.9.13-debian-10-r46

USER root

ENV RABBITMQ_MESSAGE_TIMESTAMP_VERSION=3.9.11

RUN apt-get update -y \
    && apt-get install wget -y \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && wget https://github.com/rabbitmq/rabbitmq-message-timestamp/releases/download/v${RABBITMQ_MESSAGE_TIMESTAMP_VERSION}/rabbitmq_message_timestamp-${RABBITMQ_MESSAGE_TIMESTAMP_VERSION}.ez \
    && mv rabbitmq_message_timestamp-${RABBITMQ_MESSAGE_TIMESTAMP_VERSION}.ez /opt/bitnami/rabbitmq/plugins

USER 1001
