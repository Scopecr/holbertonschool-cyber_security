#!/bin/bash
find / -xdev -type d -perm -o+w -exec chmod o-w {} \; 2>/dev/null