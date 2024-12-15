
# DevOps Project: Containerized CI Pipeline

## Overview
This project demonstrates a containerized CI pipeline using Docker and Docker Compose. It simulates building, testing, and uploading a compiled binary.

## Setup Instructions
1. Clone the repository.
2. Install Docker and Docker Compose.
3. Run the entire pipeline:
   ```
   make pipeline
   ```

## Pipeline Details
1. **Build**: Compiles the source code into a binary.
2. **Test**: Executes configurable test scripts based on `config/test-config.json`.
3. **Upload**: Simulates uploading the binary to GitHub.

## Customization
- Update `config/test-config.json` to add or modify test cases.
- Replace `src/main.c` with your own source code.

## Logs
Logs for each stage are stored in the `logs/` directory.

# CO-FinalProject-G5