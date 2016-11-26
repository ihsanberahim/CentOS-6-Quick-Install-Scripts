#!/bin/bash

clear

echo 'Going to install the LAMP stack on your machine, here we go...'
echo '------------------------'

yum install epel-release
rpm -Uvh https://mirror.webtatic.com/yum/el6/latest.rpm

yum update -y
yum upgrade -y

yum install -y yum-plugin-replace
yum install -y httpd
yum install libmcrypt --enablerepo=epel
yum install -y php56w php56w-intl php56w-mcrypt php56w-mbstring php56w-xml php56w-soap php56w-gd php56w-pdo php56w-pdo_mysql
yum replace -y mysql --replace-with mysql55w
yum replace -y mysql-libs --replace-with mysql55w-libs
yum install -y mysql55w mysql55w-server

echo 'Wait. Run these 3 lines'
echo '/usr/bin/mysql_secure_installation'
echo 'chkconfig mysqld on'
echo 'chkconfig httpd on'
