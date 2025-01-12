#!/bin/bash
# test_umask.sh - Test default permissions

# Show current umask
echo "Current umask: $(umask)"

# Create a new file
touch test_file.txt

# Display default permissions
echo "Permissions of test_file.txt:"
ls -l test_file.txt

# Clean up
rm -f test_file.txt
