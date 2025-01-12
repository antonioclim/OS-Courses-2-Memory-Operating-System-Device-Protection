#!/bin/bash
# create_test_device.sh - Create and manage a custom device

# Create a test directory for devices
sudo mkdir /dev/test
cd /dev/test

# Create a character device
echo "Creating a test character device..."
sudo mknod testdev c 1 3  # Major=1, Minor=3 corresponds to /dev/null

# Set restricted permissions
echo "Setting permissions for testdev..."
sudo chmod 600 testdev

# Verify device details
echo "Device details:"
ls -l testdev
file testdev

# Clean up
cd ..
sudo rm -r /dev/test
