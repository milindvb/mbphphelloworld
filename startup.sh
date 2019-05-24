#!/bin/bash
apt-get install nano
sed -i 's/^/#/g' /etc/apache2/conf-enabled/other-vhosts-access-log.conf
/usr/sbin/apache2ctl -D FOREGROUND
