#!/bin/bash
# Save as wsl_privileges.sh

echo "=== WSL Security Context ==="

# Show WSL version
echo "WSL Version:"
wsl.exe --version

# Show current user context
echo -e "\nUser Context:"
whoami
id
groups

# Show process hierarchy (specific to WSL)
echo -e "\nWSL Process Tree:"
pstree -p

# Show capabilities in WSL
echo -e "\nWSL Capabilities:"
getcap -r / 2>/dev/null
