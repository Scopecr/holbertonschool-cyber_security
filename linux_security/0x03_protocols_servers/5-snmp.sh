#!/bin/bash
nmap -p 161 -sU --script=snmp-info --script-args snmpcommunity=public $1