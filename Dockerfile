FROM ubuntu:20.04

# Install required tools
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    curl \
    jq

# Create work directory
WORKDIR /app

# Copy scripts directory into the container
COPY scripts/ /app/scripts/

# Make sure the scripts are executable
RUN chmod +x /app/scripts/*.sh
