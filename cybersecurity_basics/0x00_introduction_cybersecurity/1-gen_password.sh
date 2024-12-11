#!/bin/bash
cat /dev/random/ | tr -dc '[:alnum:]' | head -c $1
