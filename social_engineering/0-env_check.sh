#!/bin/bash

tools=("setoolkit" "apache2" "zip" "sendmail")

for tool in "${tools[@]}"; do
    if command -v "$tool" &>/dev/null || dpkg -l "$tool" &>/dev/null 2>&1; then
        echo "OK: $tool"
    else
        echo "MISSING: $tool"
    fi
done
