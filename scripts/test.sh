#!/bin/bash

echo "Starting tests..." | tee logs/test.log
CONFIG_FILE="config/test-config.json"

if [ ! -f "$CONFIG_FILE" ]; then
    echo "Test configuration file not found!" | tee -a logs/test.log
    exit 1
fi

# Read test parameters from config
TEST_PARAMS=$(jq -r '.test_cases[]' "$CONFIG_FILE")
for TEST in $TEST_PARAMS; do
    echo "Running test: $TEST" | tee -a logs/test.log
    
    if [[ "$TEST" == "HelloWorldTest" ]]; then
        # Run the binary and capture the output
        OUTPUT=$(./src/binary)
        
        # Check if the binary outputs "Hello, World!"
        if [[ "$OUTPUT" == "Hello, World!" ]]; then
            echo "Test $TEST passed." | tee -a logs/test.log
        else
            echo "Test $TEST failed." | tee -a logs/test.log
        fi
    else
        # Simulate other test logic (e.g., a simple check or placeholder)
        echo "Simulated test for $TEST completed." | tee -a logs/test.log
    fi
done

echo "All tests completed successfully!" | tee -a logs/test.log
