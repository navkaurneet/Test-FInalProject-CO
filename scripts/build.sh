#!/bin/bash

echo "Starting build process..." | tee logs/build.log
gcc src/main.c -o src/binary || { echo "Build failed"; exit 1; }
echo "Build complete. Binary created at src/binary" | tee -a logs/build.log
