#!/bin/bashsudo
nmap -sM -p440-450 -v -pocket-trace -open $1
