#!/bin/bash
# Save as wsl_devices.sh

echo "=== WSL Device Information ==="

# Show available devices in WSL
echo "Devices in /dev:"
ls -l /dev | grep -v "total" | head -10

# Show mounted filesystems
echo -e "\nMounted Filesystems:"
mount | grep -E "^/dev/"

# Show Windows drives
echo -e "\nWindows Drives:"
ls -l /mnt/
