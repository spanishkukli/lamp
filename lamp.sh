#!/bin/bash

# Install packages
apt update
apt install gnupg2 ufw apache2 mariadb-server -y
apt-get install ca-certificates apt-transport-https software-properties-common -y
echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/sury-php.list
wget -qO - https://packages.sury.org/php/apt.gpg | apt-key add -
apt-get update -y
apt-get install php8.0

# Enable HTTP y HTTPS
ufw app info "WWW Full"
ufw allow in "WWW Full"

#mysql_secure_installation 


