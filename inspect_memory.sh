#!/bin/bash
# inspect_memory.sh - Script to inspect process memory

# Run a process (sleep command in the background)
sleep 50 &
PID=$!

# Display memory maps of the process
echo "Memory map of process $PID:"
cat /proc/$PID/maps

# Display memory usage statistics
echo -e "\nMemory stats of process $PID:"
cat /proc/$PID/status | grep -E 'VmSize|VmRSS'

# Clean up
kill $PID
