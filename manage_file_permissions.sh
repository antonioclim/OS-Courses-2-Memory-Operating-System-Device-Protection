#!/bin/bash
# manage_file_permissions.sh - Manage file permissions

# Create test files
echo "Creating test files..."
touch file1.txt file2.txt file3.txt

# Set specific permissions
echo "Setting permissions..."
chmod 400 file1.txt  # Read-only for owner
chmod 200 file2.txt  # Write-only for owner
chmod 100 file3.txt  # Execute-only for owner

# Display permissions
echo "Displaying file permissions:"
ls -l file*.txt

# Test access
echo -e "\nTesting access:"
echo "Reading file1.txt:"
cat file1.txt 2>&1  # Should succeed
echo "Writing to file2.txt:"
echo "test" > file2.txt 2>&1  # Should fail
echo "Executing file3.txt:"
./file3.txt 2>&1  # Should fail (not a script)

# Clean up
rm -f file*.txt
