#!/bin/bash
sudo nmap -scanflags URGACKPSHRSTYNFIN -p $2 -reason $1 &> custom_scan.txt
