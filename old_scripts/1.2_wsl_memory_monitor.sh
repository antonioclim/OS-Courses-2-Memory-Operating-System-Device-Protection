#!/bin/bash
# Save as wsl_memory_monitor.sh

echo "Monitoring WSL Memory Usage (Ctrl+C to stop)"
echo "----------------------------------------"

while true; do
    clear
    echo "Time: $(date)"
    echo -e "\nWSL Memory Usage:"
    free -h
    echo -e "\nTop 5 Memory-Using Processes in WSL:"
    ps aux --sort=-%mem | head -6
    sleep 2
done
