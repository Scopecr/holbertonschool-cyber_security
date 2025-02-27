#!/bin/bash
echo | nc -v -w 3 $1 25 2>&1 | grep -q "STARTTLS" && echo "STARTTLS configured" || echo "STARTTLS not configured"