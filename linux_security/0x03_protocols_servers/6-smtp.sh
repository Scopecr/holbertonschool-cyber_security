#!/bin/bash
echo | nc -v -w 3 $1 25 2>&1 | grep -q "^smtpd_tls_security_level" && echo "SMTP server available" || echo "SMTP server unavailable"
