#!/bin/bash
echo "$(echo -n "$1$(openssl rand -hex 8)" | openssl sha512 -hex)" > 3_hash.txt