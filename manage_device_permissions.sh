#!/bin/bash
# manage_device_permissions.sh - Modify and restore device permissions

DEVICE="/dev/null"  # Change this to test other devices

echo "Original permissions for $DEVICE:"
ls -l $DEVICE

# Change permissions
echo "Modifying permissions..."
sudo chmod 600 $DEVICE  # Owner: read/write; others: no access

# Display modified permissions
echo "Modified permissions:"
ls -l $DEVICE

# Restore original permissions
echo "Restoring original permissions..."
sudo chmod 666 $DEVICE
ls -l $DEVICE
