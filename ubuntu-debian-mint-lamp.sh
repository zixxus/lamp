#!/bin/bash

apt-get -y install mariadb-server mariadb-client
mysql_secure_installation
apt-get -y install apache2
apt-get -y install php7.0 libapache2-mod-php7.0

apt-get -y install php7.0-mysql php7.0-curl php7.0-gd php7.0-intl php-pear php-imagick php7.0-imap php7.0-mcrypt php-memcache  php7.0-pspell php7.0-recode php7.0-sqlite3 php7.0-tidy php7.0-xmlrpc php7.0-xsl php7.0-mbstring php-gettext php7.0-mbstring php7.0-intl php7.0-common php7.0-cli

apt-get -y install php-apcu



systemctl restart apache2
echo "<?php phpinfo(); ?>" > /var/www/html/info.php
chown www-data:www-data /var/www/html/info.php

echo "mysql_secure_installation";


