#!/bin/bash
[ ! -z "${PHP_MEMORY_LIMIT}" ]         && sed -i "s/PHP_MEMORY_LIMIT/${PHP_MEMORY_LIMIT}/" /usr/local/etc/php/php.ini
[ ! -z "${PHP_PORT}" ]                 && sed -i "s/PHP_PORT/${PHP_PORT}/" /usr/local/etc/php-fpm.conf
[ ! -z "${PHP_PM_MAX_CHILDREN}" ]      && sed -i "s/PHP_PM_MAX_CHILDREN/${PHP_PM_MAX_CHILDREN}/" /usr/local/etc/php-fpm.conf
[ ! -z "${PHP_PM_START_SERVERS}" ]     && sed -i "s/PHP_PM_START_SERVERS/${PHP_PM_START_SERVERS}/" /usr/local/etc/php-fpm.conf
[ ! -z "${PHP_PM_MIN_SPARE_SERVERS}" ] && sed -i "s/PHP_PM_MIN_SPARE_SERVERS/${PHP_PM_MIN_SPARE_SERVERS}/" /usr/local/etc/php-fpm.conf
[ ! -z "${PHP_PM_MAX_SPARE_SERVERS}" ] && sed -i "s/PHP_PM_MAX_SPARE_SERVERS/${PHP_PM_MAX_SPARE_SERVERS}/" /usr/local/etc/php-fpm.conf

# Make sure this line comes last, otherwise find/replace will replace above vars
[ ! -z "${PHP_PM}" ]                   && sed -i "s/PHP_PM/${PHP_PM}/" /usr/local/etc/php-fpm.conf

# Start the cron service
/usr/sbin/cron

# Start the php-fpm service
/usr/local/sbin/php-fpm