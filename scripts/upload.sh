#!/bin/bash

echo "Starting artifact upload..." | tee logs/upload.log
if [ -f "src/binary" ]; then
    echo "Binary found. Uploading to GitHub (simulated)..." | tee -a logs/upload.log
    # Simulate upload logic
    sleep 2
    echo "Upload complete!" | tee -a logs/upload.log
else
    echo "Binary not found. Upload failed." | tee -a logs/upload.log
    exit 1
fi
