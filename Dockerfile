FROM fluent/fluentd:stable

RUN gem install fluent-plugin-elasticsearch
ADD fluent.conf /fluentd/etc/
