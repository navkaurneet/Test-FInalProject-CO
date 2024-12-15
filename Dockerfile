FROM ubuntu:20.04

# Install required tools
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    curl \
    jq

# Create work directory
WORKDIR /app
