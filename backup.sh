#!/bin/bash
date=$(date '+%Y-%m-%d')
pg_dump --username netbox --host localhost netbox > netbox-$date.sql
