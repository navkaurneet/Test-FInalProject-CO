#!/bin/bash

# Log the start of the upload process
echo "Starting artifact upload..." | tee -a logs/upload.log

echo "Setting folder and file permissions..." | tee -a logs/upload.log
chmod -R 755 /app/src   # Adjusted path to container's /app/src

# Check if the binary exists in the src directory
if [ -f "/app/src/binary" ]; then  # Use the correct path in the container
    echo "Binary found. Copying to local artifacts folder..." | tee -a logs/upload.log
    
    mkdir -p artifacts  # Create the artifacts folder if it doesn't exist
    cp /app/src/binary ./artifacts/

    echo "Binary copied to local artifacts folder." | tee -a logs/upload.log
else
    echo "Binary not found. Upload failed." | tee -a logs/upload.log
    exit 1
fi
