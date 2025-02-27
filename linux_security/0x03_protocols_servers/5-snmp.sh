#!/bin/bash
nmap -sU -p 161 --script=snmp-info $1 | gerp -B 3 "public"