#!/bin/bash
sudo nmap -oN /dev/null custom_scan.txt -scanflags URGACKPSHRSTYNFIN -p $2 -reason $1 2&>1
