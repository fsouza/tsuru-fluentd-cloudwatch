FROM fluent/fluentd:stable

ENV LOG_GROUP_NAME fluentd-group

RUN gem install fluent-plugin-cloudwatch-logs
ADD fluentd.conf /etc/fluentd.conf.template
ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
EXPOSE 5140
