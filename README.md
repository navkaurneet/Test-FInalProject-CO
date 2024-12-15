
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

***If you want to run the project locally***

Before that the clone is sucessful and 
Ensure Docker, Docker Compose, and make are installed on your system.

Verify the Directory Structure:
   Check if all the key files and folders (Dockerfile, Makefile, src/, scripts/, config/) exist.

## Build and Run with Make:

Use the Makefile to simplify operations. 
**To Run:**
   make build
This should execute the build.sh script in the scripts/ directory to compile the source code.

**To test:**
   make test
This runs the test.sh script and logs the test results to logs/test.log.

**To simulate upload:**
   make upload
This triggers the upload.sh script.

## Run with Docker Compose:

Use docker-compose.yml for container orchestration:
   docker-compose up --build
This builds and runs all necessary containers (e.g., build, test, and upload).

**Check Logs:**

All logs are stored in the logs/ directory. Check these files for details:
logs/build.log: Verify if the build process completed without errors.
logs/test.log: Ensure tests passed with the correct outputs.
logs/upload.log: Confirm successful simulated upload.
Test the Binary:

After building, the compiled binary (e.g., my_binary) should be available in the container or local directory.

Run the binary to validate its output:
   ./src/my_binary
Expected output: Hello, World!

***If you want to run the project on the github using CICD***

## GitHub Actions Workflow:

Push changes to the repository to trigger the CI/CD pipeline.
Check the workflow execution in the Actions tab on GitHub for:
Docker container builds.
Execution of scripts/build.sh, test.sh, and upload.sh.
Test results and artifact uploads.
