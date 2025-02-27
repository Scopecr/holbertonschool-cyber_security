#!/bin/bash
echo | nc -v -w 3 $1 25 2>&1 | grep -q "^smtpd_tls_security_level" /etc/postfix/main.cf || echo "STARTTLS server configured" || echo "STARTTLS server not configured"
