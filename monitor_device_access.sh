#!/bin/bash
# monitor_device_access.sh - Monitor access to devices

echo "Monitoring access to /dev..."

# Check if inotifywait is installed
if ! command -v inotifywait &> /dev/null; then
    echo "Error: inotifywait is not installed. Please install it with:"
    echo "sudo apt update && sudo apt install inotify-tools"
    exit 1
fi

# Run inotifywait with sudo
#sudo inotifywait -m /dev -e access -e modify -e open
###Each time inotifywait prints a message to the terminal, it generates another modification to /dev/tty, 
####which is then detected again. This creates an endless loop of modification events. Thus:
while true; do 
   sudo inotifywait -m /dev -e access -e modify -e open --exclude '/dev/tty' 
   sleep 1 
done
