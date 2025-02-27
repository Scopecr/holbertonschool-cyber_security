#!/bin/bash
nmap -sU -p 161 --script=snmp-info $1 | grep -B 3 "public"