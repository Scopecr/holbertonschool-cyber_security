#!/bin/bash
< /dev/urandom tr -dc '[:alnum:]' | head -c "${1:-12}"; echo