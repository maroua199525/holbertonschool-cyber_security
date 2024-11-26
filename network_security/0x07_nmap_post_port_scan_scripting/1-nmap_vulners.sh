#!/bin/bash
nmap -p 80,443 --script vulners -p 80,443 $1