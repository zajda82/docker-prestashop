#!/bin/bash
[ ! -z "${VIRTUAL_HOST}" ] && sed -i "s/VIRTUAL_HOST/${VIRTUAL_HOST}/" /etc/nginx/conf.d/default.conf
[ ! -z "${PHP_HOST}" ] && sed -i "s/PHP_HOST/${PHP_HOST}/" /etc/nginx/conf.d/default.conf
[ ! -z "${PHP_PORT}" ] && sed -i "s/PHP_PORT/${PHP_PORT}/" /etc/nginx/conf.d/default.conf
[ ! -z "${CERTIFICATE_PATH}" ] && sed -i "s@CERTIFICATE_PATH@${CERTIFICATE_PATH}@" /etc/nginx/conf.d/default.conf
[ ! -z "${CERTIFICATE_KEY_PATH}" ] && sed -i "s@CERTIFICATE_KEY_PATH@${CERTIFICATE_KEY_PATH}@" /etc/nginx/conf.d/default.conf

/usr/sbin/nginx -g "daemon off;"