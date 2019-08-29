FROM bitnami/rabbitmq:3.7.17-debian-9-r0
USER root

RUN apt-get update && apt-get install -y unzip

RUN curl https://dl.bintray.com/rabbitmq/community-plugins/3.7.x/rabbitmq_message_timestamp/rabbitmq_message_timestamp-20170830-3.7.x.zip > rabbitmq_message_timestamp-20170830-3.7.x.zip && \
    unzip rabbitmq_message_timestamp-20170830-3.7.x.zip && \
    rm -f rabbitmq_message_timestamp-20170830-3.7.x.zip && \
    mkdir -p plugins && \
    mv rabbitmq_message_timestamp-20170830-3.7.x.ez plugins/

RUN rm -rf /var/lib/apt/lists/* && \
    apt-get -y purge unzip

USER 1001
