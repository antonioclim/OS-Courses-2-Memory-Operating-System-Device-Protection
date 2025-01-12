#!/bin/bash
# monitor_usb.sh - Monitor USB device activity

echo "Monitoring USB device connections and disconnections..."
udevadm monitor --udev --subsystem-match=usb
