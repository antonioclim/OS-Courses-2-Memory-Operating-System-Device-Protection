#!/bin/bash
# log_permission_changes.sh - Log file permission changes in a directory

MONITOR_DIR=$(pwd)
LOGFILE="permission_changes.log"

echo "Monitoring permission changes in $MONITOR_DIR..."
inotifywait -m $MONITOR_DIR -e attrib | while read path action file; do
    echo "$(date): Permissions changed for $file" >> $LOGFILE
done
