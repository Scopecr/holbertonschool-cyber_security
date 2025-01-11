#!/bin/bash
curl -X POST "$2" -H "HOST:$1" -H "Content-Type:application/x-www-form-urlenconded" -d "$3"