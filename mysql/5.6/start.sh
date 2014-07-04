#!/bin/bash

OVERRIDE="/mysql-override"
CONFIG="my.cnf"
CONF_DIR="/etc/mysql"

cd "$CONF_DIR"

ls -l "$OVERRIDE"

if [[ -f "$OVERRIDE/$CONFIG" ]]; then
  echo "override"
  rm -f "$CONFIG"
  ln -s "$OVERRIDE/$CONFIG" "$CONFIG"
else
  echo "not override"
fi

/usr/bin/supervisord
