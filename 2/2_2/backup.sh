#!/bin/bash

date_str=$(date +"%Y-%m-%d")

sudo -u backuping tar -czf /home/backuping/backup_$date_str.tar.gz /home/backuping
