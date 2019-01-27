#!/bin/sh

HOST_SERVER=${HOST_SERVER:-\$host}

/bin/sed -i "s/<host_placeholder>/${HOST_SERVER}/" /etc/nginx/conf.d/default.conf

nginx -g "daemon off;"
