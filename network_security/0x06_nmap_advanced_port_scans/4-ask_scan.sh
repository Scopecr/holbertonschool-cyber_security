#!/bin/bash
sudo nmap -sA -host-timeout 1s -p $2 -reason $1 
