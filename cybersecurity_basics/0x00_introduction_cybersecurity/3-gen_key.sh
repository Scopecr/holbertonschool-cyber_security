#!/bin/bash
ssh-keygen -t rsa -b 4096 -C "$1" -N "" -f "$2"