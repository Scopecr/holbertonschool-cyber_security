#!/bin/bash
openssl s_client -connect $1:25 -starttls smtp </dev/null 2>/dev/null | grep -q "STARTTLS" || echo "STARTTLS not configured"