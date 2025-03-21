#!/bin/bashsudo
nmap -sM -p21,22,23,80,443  -v -pocket-trace -open $1
