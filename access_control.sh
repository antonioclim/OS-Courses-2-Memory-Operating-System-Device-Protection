#!/bin/bash
# access_control.sh - A simple directory access control system

CONTROL_DIR="/tmp/restricted_dir"

# Set up the directory
sudo mkdir -p $CONTROL_DIR
sudo chmod 700 $CONTROL_DIR
sudo chown $USER:$USER $CONTROL_DIR

echo "Access control enabled for $CONTROL_DIR. Only $USER can access it."

# Monitor unauthorized access attempts
echo "Monitoring unauthorized access attempts..."
sudo inotifywait -m $CONTROL_DIR -e access -e open | while read path action file; do
    echo "$(date): Unauthorized access attempt on $CONTROL_DIR" >> /var/log/access_control.log
done
