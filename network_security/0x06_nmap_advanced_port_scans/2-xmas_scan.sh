#!/bin/bash
sudo nmap -sX -p 440-450 -v -reason -packet-trace -open $1
