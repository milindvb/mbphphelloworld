#!/bin/bash
# sed -i 's/^/#/g' /etc/apache2/conf-enabled/other-vhosts-access-log.conf
apt install brotli
a2enmod brotli

echo "<IfModule mod_brotli.c>" >> /etc/apache2/apache2.conf
echo "AddOutputFilterByType BROTLI_COMPRESS text/html text/plain text/xml text/css text/javascript application/x-javascript application/javascript application/json application/x-font-ttf application/vnd.ms-fontobject image/x-icon" >> /etc/apache2/apache2.conf
echo "</IfModule>" >> /etc/apache2/apache2.conf

/usr/sbin/apache2ctl -D FOREGROUND
