#!/bin/bash
# Save as permission_compare.sh

# Create test directory
mkdir -p ~/wsl_test
cd ~/wsl_test

# Create files with different permissions
echo "Creating test files..."
echo "WSL file" > wsl_file.txt
echo "Windows file" > win_file.txt

# Set permissions in WSL
chmod 700 wsl_file.txt

echo "=== File Permissions ==="
echo "WSL view:"
ls -l wsl_file.txt win_file.txt

echo -e "\nFile ownership:"
ls -ln wsl_file.txt win_file.txt

echo -e "\nNote: Windows permissions are handled differently than WSL permissions"
echo "Check these files in Windows Explorer to see the difference"
echo "Windows path: \\\wsl$\\Ubuntu\\home\\$USER\\wsl_test\\"
