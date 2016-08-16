#!/bin/bash

clear

echo 'Going to install the LAMP stack on your machine, here we go...'
echo '------------------------'
read -p "MySQL Password: " mysqlPassword
read -p "Retype password: " mysqlPasswordRetype

rpm -Uvh https://mirror.webtatic.com/yum/el6/latest.rpm

yum update -y
yum upgrade -y

yum install -y httpd php56w mysql55w mysql55w-server
yum install -y php56w-intl php56w-mcrypt php56w-mbstring php56w-xml php56w-soap php56w-gd


chkconfig mysqld on
chkconfig httpd on

/usr/bin/mysql_secure_installation
