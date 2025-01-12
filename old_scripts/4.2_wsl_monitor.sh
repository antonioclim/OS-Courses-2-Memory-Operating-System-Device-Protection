#!/bin/bash
# Save as wsl_monitor.sh

# Note: inotify might not work as expected in WSL
# This is a simplified monitoring script

echo "Monitoring file access in current directory (Ctrl+C to stop)"
echo "--------------------------------------------------------"

while true; do
    for file in *; do
        if [ -f "$file" ]; then
            current_perm=$(stat -c %a "$file")
            echo "[$file] - Current permissions: $current_perm"
        fi
    done
    sleep 5
    clear
done

