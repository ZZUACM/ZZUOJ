#!/bin/bash
DBUSER=root
DBPASS=1234
DBHOST=127.0.0.1
sudo mysql -h $DBHOST -u$DBUSER -p$DBPASS < jol.sql
sudo mysql -h $DBHOST -u$DBUSER -p$DBPASS < sign_up_studnets.sql
sudo mysql -h $DBHOST -u$DBUSER -p$DBPASS < phpmyadmin.sql
