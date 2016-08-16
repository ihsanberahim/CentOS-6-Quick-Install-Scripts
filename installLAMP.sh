#!/bin/bash

clear

echo 'Going to install the LAMP stack on your machine, here we go...'
echo '------------------------'
read -p "MySQL Password: " mysqlPassword
read -p "Retype password: " mysqlPasswordRetype

rpm -Uvh https://mirror.webtatic.com/yum/el6/latest.rpm

yum update -y
yum upgrade -y

yum install -y yum-plugin-replace
yum install -y httpd
yum install -y php56w php56w-intl php56w-mcrypt php56w-mbstring php56w-xml php56w-soap php56w-gd php56w-pdo php56w-pdo_mysql
yum replace -y mysql --replace-with mysql55w
yum install -y mysql55w mysql55w-server


chkconfig mysqld on
chkconfig httpd on

/usr/bin/mysql_secure_installation
