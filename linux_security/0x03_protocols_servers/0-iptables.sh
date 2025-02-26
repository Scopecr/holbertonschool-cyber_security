#!/bin/bash
iptables -v  -A INPUT -s "$1" -j DROP
