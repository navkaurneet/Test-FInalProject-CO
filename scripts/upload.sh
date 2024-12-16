#!/bin/bash

# Log the start of the upload process
echo "Starting artifact upload..." | tee -a logs/upload.log

echo "Setting folder and file permissions..." | tee -a logs/upload.log
chmod -R 755 /app/src   # Adjusted path to container's /app/src

# Check if the binary exists in the src directory
if [ -f "/app/src/binary" ]; then  # Use the correct path in the container
    echo "Binary found. Uploading to GitHub (simulated)..." | tee -a logs/upload.log
    
    sleep 2
    echo "Upload complete!" | tee -a logs/upload.log
else
    echo "Binary not found. Upload failed." | tee -a logs/upload.log
    exit 1
fi
