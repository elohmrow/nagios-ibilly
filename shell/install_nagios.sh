#!/bin/bash

# ##
# install nagios on debian stretch 
# ##

NAGIOS_VERSION="4.3.4"

# [0]
sudo iptables -I INPUT -p tcp --destination-port 80 -j ACCEPT
echo iptables-persistent iptables-persistent/autosave_v4 boolean true | sudo debconf-set-selections
echo iptables-persistent iptables-persistent/autosave_v6 boolean true | sudo debconf-set-selections

# [1]
sudo apt-get update
sudo apt-get install -y autoconf gcc libc6 make wget unzip apache2 apache2-utils php libgd-dev iptables-persistent

# [2]
cd /tmp
sudo wget -O nagioscore.tar.gz https://github.com/NagiosEnterprises/nagioscore/archive/nagios-${NAGIOS_VERSION}.tar.gz
sudo tar xzf nagioscore.tar.gz

# [3]
cd /tmp/nagioscore-nagios-${NAGIOS_VERSION}/
sudo ./configure --with-httpd-conf=/etc/apache2/sites-enabled
sudo make all

# [4]
sudo useradd nagios
sudo usermod -a -G nagios www-data

# [5]
sudo make install

# [6]
sudo make install-init
sudo systemctl enable nagios.service

# [7]
sudo make install-commandmode

# [8]
sudo make install-config

# [9]
sudo make install-webconf
sudo a2enmod rewrite
sudo a2enmod cgi

# [10] 
sudo htpasswd -b -c /usr/local/nagios/etc/htpasswd.users nagiosadmin m4gn0l14
