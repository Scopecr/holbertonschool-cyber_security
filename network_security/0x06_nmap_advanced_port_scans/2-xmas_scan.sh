#!/bin/bash
sudo nmap -sX -p 440-450 -v -packet-trace -open $1
