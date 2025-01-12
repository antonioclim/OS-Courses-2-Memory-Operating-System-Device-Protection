#!/bin/bash
# Save as 1a_memory_info.sh

echo "=== WSL Memory Information ==="

# Show WSL memory limits
echo "WSL Memory Limits:"
cat /proc/meminfo | grep -E 'MemTotal|MemFree|MemAvailable'

# Show current process memory
echo -e "\nCurrent Process Memory:"
cat /proc/$$/status | grep -E 'VmSize|VmRSS|VmData'

# Show Windows Host Memory Impact
echo -e "\nWSL Memory Usage in Windows:"
free -h
