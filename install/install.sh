#!/bin/bash
#before install check DB setting in 
#	judge.conf 
#	../web/include/db_info.inc.php
#	and down here
#and run this with root

#CENTOS/REDHAT/FEDORA WEBBASE=/var/www/html APACHEUSER=apache 
WEBBASE=/var/www/html
APACHEUSER=www-data
DBUSER=root
DBPASS=1234

#try install tools
sudo apt-get install make flex g++ clang libmysql++-dev php5 apache2 mysql-server-5.6 php5-mysql php5-gd php5-cli mono-gmcs subversion
sudo /etc/init.d/mysql start

sudo yum -y update
sudo yum -y install php httpd php-mysql mysql-server php-xml php-gd gcc-c++  mysql-devel php-mbstring glibc-static flex
sudo /etc/init.d/mysqld start

#install web and db
sudo cp -R ../web $WEBBASE
sudo chmod -R 771 $WEBBASE
sudo chown -R $APACHEUSER $WEBBASE
sudo mysql -h localhost -u$DBUSER -p$DBPASS < db.sql
sudo mysql -h localhost -u$DBUSER -p$DBPASS < create_cha.sql
sudo mysql -h localhost -u$DBUSER -p$DBPASS < create_vjudge.sql

sudo /etc/init.d/apache2 restart
sudo /etc/init.d/httpd restart
