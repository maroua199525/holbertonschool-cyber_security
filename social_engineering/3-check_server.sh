#!/bin/bash

URL="http://192.168.1.10/Q4_Update.zip"

RESPONSE=$(curl -s -o /dev/null -w "%{http_code}" "$URL")

if [ "$RESPONSE" -eq 200 ]; then
    echo "[+] Server is ready"
fi
