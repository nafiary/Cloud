#!/usr/bin/env bash
apt-get update
apt-get install -y apache2
apt-get install php7.0 php7.0-fpm php7.0-mysql libapache2-mod-php php-mcrypt -y
apt-get install unzip -y

sed -ie 's/\/var\/www\/html/\/var\/www/g' /etc/apache2/sites-available/000-default.conf

wget https://github.com/bcit-ci/CodeIgniter/archive/3.0.1.zip
unzip 3.0.1.zip
mv CodeIgniter-3.0.1/* /var/www
