#!/bin/bash
sudo nmap -oN custom_scan.txt>/dev/null -scanflags URGACKPSHRSTYNFIN -p $2 -reason $1 2>&1
