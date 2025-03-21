#!/bin/bashsudo
nmap -sM -phttp,https,ftp,ssh,telnet  -v -pocket-trace -open $1
