#!/bin/bash

apt-get upgrade
apt-get update
apt-get install cron
apt-get install nano
apt-get install apache2

echo "30 * * * * root /root/scripts_trab/ab.sh" >> /etc/crontab