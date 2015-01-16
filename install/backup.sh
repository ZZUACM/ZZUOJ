#!/bin/bash
DBUSER=root
DBPASS=1234
DBHOST=127.0.0.1
mysqldump -h$DBHOST -u$DBUSER -p$DBPASS -x jol > jol.sql
mysqldump -h$DBHOST -u$DBUSER -p$DBPASS -x phpmyadmin > phpmyadmin.sql
mysqldump -h$DBHOST -u$DBUSER -p$DBPASS -x sign_up_students > sign_up_students.sql
