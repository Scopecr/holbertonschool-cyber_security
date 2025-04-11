#!/bin/bash
nmap --script=http-vuln-cve2017-5638 41 -oN vuln_scan_results.txt