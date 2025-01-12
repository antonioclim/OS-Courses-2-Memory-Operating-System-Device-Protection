#!/bin/bash
# Save as wsl_file_protection.sh

# Setup test environment
TEST_DIR=~/wsl_protection_test
mkdir -p $TEST_DIR
cd $TEST_DIR

# Create test files
echo "Creating test files with different permissions..."

# WSL-specific file
echo "WSL content" > wsl_protected.txt
chmod 600 wsl_protected.txt

# Shared file (accessible from Windows)
echo "Shared content" > shared_file.txt
chmod 644 shared_file.txt

# Execute-only file
touch executable_file.sh
chmod 100 executable_file.sh

echo "=== File Permission Tests ==="
ls -la

echo -e "\nTesting access:"
echo "Reading protected file:"
cat wsl_protected.txt 2>&1

echo -e "\nNote: Some permission behaviors might differ from standard Linux"
