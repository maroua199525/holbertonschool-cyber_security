#!/bin/bash
nmap -p 80,443 $1 --script=vulners