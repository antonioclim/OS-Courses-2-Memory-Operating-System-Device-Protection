#!/bin/bash
# test_sticky_bit.sh - Demonstrate the sticky bit

# Create a shared directory
sudo mkdir /tmp/shared_dir
sudo chmod 777 /tmp/shared_dir

# Set the sticky bit
sudo chmod +t /tmp/shared_dir

# Display permissions
ls -ld /tmp/shared_dir
