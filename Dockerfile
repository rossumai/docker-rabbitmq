FROM rabbitmq:3.7.17-alpine

RUN wget https://dl.bintray.com/rabbitmq/community-plugins/3.7.x/rabbitmq_message_timestamp/rabbitmq_message_timestamp-20170830-3.7.x.zip && \
    unzip rabbitmq_message_timestamp-20170830-3.7.x.zip && \
    rm -f rabbitmq_message_timestamp-20170830-3.7.x.zip && \
    mv rabbitmq_message_timestamp-20170830-3.7.x.ez /plugins/

