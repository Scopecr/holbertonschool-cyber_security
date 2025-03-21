#!/bin/bash
sudo nmap -sX -p 440-450 -v -reason -open $1
