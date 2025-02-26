#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 netbox.sql"
    exit 1
fi
sudo systemctl stop netbox
sudo systemctl stop netbox-rq
sudo -u postgres psql -c 'drop database netbox'
sudo -u postgres psql -c 'create database netbox'
sudo -u postgres psql netbox < $1
sudo systemctl start netbox
sudo systemctl start netbox-rq
