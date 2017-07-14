FROM fluent/fluentd:stable

# RUN mkdir /etc/fluent
ADD fluent.conf /etc/fluent/

# RUN ["apt-get", "update"]
# RUN ["apt-get", "install", "--yes", "make", "libcurl4-gnutls-dev"]
RUN ["gem", "install", "fluent-plugin-record-reformer", "--no-rdoc", "--no-ri"]
RUN ["gem", "install", "fluent-plugin-elasticsearch", "--no-rdoc", "--no-ri"]

ENTRYPOINT ["/usr/local/bin/fluentd", "-c", "/etc/fluent/fluent.conf"]
