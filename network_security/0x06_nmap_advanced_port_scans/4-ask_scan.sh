#!/bin/bash
sudo nmap -sA -host-timeout 1000ms -p $2 -reason $1 
