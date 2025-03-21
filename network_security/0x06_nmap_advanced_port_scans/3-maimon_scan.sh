#!/bin/bashsudo
nmap -sM -phttp,https,ftp,ssh,telnet -vv -pocket-trace -open $1
