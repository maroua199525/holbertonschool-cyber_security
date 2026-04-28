#!/bin/bash

URL="http://192.168.1.10/Q4_Update.zip"

RESPONSE=$(curl -s -o /dev/null -w "%{http_code}" --max-time 5 "$URL" 2>/dev/null)

if [ "$RESPONSE" != "200" ]; then
    RESPONSE=$(curl -s -o /dev/null -w "%{http_code}" --max-time 5 "http://127.0.0.1/Q4_Update.zip" 2>/dev/null)
fi

if [ "$RESPONSE" -eq 200 ]; then
    echo "[+] Server is ready"
fi
