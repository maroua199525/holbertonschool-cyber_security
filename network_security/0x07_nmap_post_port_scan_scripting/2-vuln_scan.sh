#!/bin/bash
nmap -oN vuln_scan_results.txt --script=http-vuln-cve2017-5638 $1