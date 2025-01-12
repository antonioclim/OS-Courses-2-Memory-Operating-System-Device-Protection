#!/bin/bash
# log_device_access.sh - Log unauthorized attempts to access /dev/sda

LOGFILE="/var/log/device_access.log"

echo "Monitoring unauthorized access to /dev/sda..."
sudo inotifywait -m /dev/sda -e access -e open | while read path action file; do
    echo "$(date): Unauthorized access attempt on /dev/sda" >> $LOGFILE
done
