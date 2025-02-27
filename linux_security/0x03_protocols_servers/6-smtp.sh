#!/bin/bash
echo | nc -v -w 3 $1 25 2>&1 | grep -q "^220" && echo "SMTP server available" || echo "SMTP server unavailable"
