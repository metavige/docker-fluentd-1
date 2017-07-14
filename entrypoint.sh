#!/bin/sh

if [ ! -z $ES_HOST ]; then
	sed -i 's/ES_HOST/$ES_HOST/g' /etc/fluent/fluent.conf
fi

# /usr/local/bin/fluentd -c /etc/fluent/fluent.conf
