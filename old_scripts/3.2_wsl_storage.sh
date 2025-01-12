#!/bin/bash
# Save as wsl_storage.sh

echo "=== WSL Storage Access ==="

# Show WSL disk usage
echo "WSL Disk Usage:"
df -h /

# Show Windows drives access
echo -e "\nWindows Drives Access:"
for drive in /mnt/*; do
    if [ -d "$drive" ]; then
        echo "Testing access to $drive:"
        ls -ld "$drive"
    fi
done
