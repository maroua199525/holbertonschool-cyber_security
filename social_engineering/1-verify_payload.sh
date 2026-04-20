#!/bin/bash

if [ -f "/root/.set/payload.exe" ]; then
    echo "SET Payload generated successfully"
else
    echo "Error: Payload not found."
fi
