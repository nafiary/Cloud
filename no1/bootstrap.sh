#!/usr/bin/env bash
apt-get update
apt-get install -y apache2
apt-get install php7.0 php7.0-fpm php7.0-mysql -y

sed -ie 's/;opcache.enable=0/opcache.enable=1/g' /etc/php/7.0/fpm/php.ini

