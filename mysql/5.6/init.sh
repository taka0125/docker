#!/bin/bash
password='cJiiF6bWBz9zzwRDuAnUPmFKGYTpBa'

echo "mysql_install_db ..."
mysql_install_db

echo "service mysql ..."

/etc/init.d/mysql start &
MYSQL_PID=$!

echo "wait $MYSQL_PID"
wait $MYSQL_PID

echo "mysqladmin ..."
mysqladmin -u root password "$password"

echo "grant ..."
echo "grant all privileges on *.* to root@\"%\" identified by \"$password\" with grant option;" | mysql -u root -p$password
