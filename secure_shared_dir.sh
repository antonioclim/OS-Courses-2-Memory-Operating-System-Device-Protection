#!/bin/bash
# secure_shared_dir.sh - Set up a secure shared directory

SHARE_DIR="/tmp/secure_shared"

echo "Creating shared directory..."
sudo mkdir -p $SHARE_DIR
sudo chmod 770 $SHARE_DIR  # Full access for owner and group, none for others
sudo chown $USER:$USER $SHARE_DIR

echo "Directory $SHARE_DIR created with permissions:"
ls -ld $SHARE_DIR
