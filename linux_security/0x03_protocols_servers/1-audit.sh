#!/bin/bash
grep -vE '^(#|$|Port 22|Protocol 2|PermitRootLogin|PasswordAuthentication|PubkeyAuthentication|UsePAM)' /etc/ssh/sshd_config > sshd_nonstandard.txt