#!/bin/bash
# monitor_permissions.sh - Monitor permission changes

# Monitor the current directory for permission changes
echo "Monitoring permission changes in $(pwd)..."
inotifywait -m . -e attrib | while read path action file; do
    echo "Permission change detected!"
    echo "File: $file"
    echo "New permissions: $(stat -c '%A' "$file")"
    echo "Owner: $(stat -c '%U' "$file")"
    echo "Group: $(stat -c '%G' "$file")"
    echo "---"
done
