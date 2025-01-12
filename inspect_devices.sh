#!/bin/bash
# inspect_devices.sh - List devices and their permissions

echo "Listing all block devices and their permissions..."
lsblk -o NAME,TYPE,SIZE,MOUNTPOINT,MODE

echo -e "\nListing character devices in /dev:"
ls -l /dev | grep '^c'

echo -e "\nPermissions for the main storage device (/dev/sda):"
ls -l /dev/sda
