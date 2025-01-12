#!/bin/bash
# monitor_high_memory.sh - Monitor memory usage and alert if usage exceeds threshold

THRESHOLD=2  # Set memory usage threshold (percentage)

while true; do
    USAGE=$(free | awk '/^Mem/ { printf("%.0f", $3/$2 * 100) }')
    if [ "$USAGE" -gt "$THRESHOLD" ]; then
        echo "WARNING: Memory usage is at $USAGE%!"
    fi
    sleep 5
done
