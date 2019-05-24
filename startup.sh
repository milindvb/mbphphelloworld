#!/bin/bash
sed -i 's/^/#/g' /etc/apache2/conf-enabled/other-vhosts-access-log.conf
/usr/sbin/apache2ctl -D FOREGROUND
