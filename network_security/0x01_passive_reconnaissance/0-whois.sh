#!/bin/bash

# Check if domain is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <domain>"
  exit 1
fi

DOMAIN=$1

# Perform WHOIS lookup
WHOIS_DATA=$(whois $DOMAIN)

# Extract and format information using awk
echo "Type,Name,Organization,Street,City,State,Postal Code,Country,Phone,Email"

echo "$WHOIS_DATA" | awk '
BEGIN { FS=":"; OFS="," }
/Registrant Name/ { name=$2 }
/Registrant Organization/ { org=$2 }
/Registrant Street/ { street=$2 }
/Registrant City/ { city=$2 }
/Registrant State/ { state=$2 }
/Registrant Postal Code/ { postal=$2 }
/Registrant Country/ { country=$2 }
/Registrant Phone/ { phone=$2 }
/Registrant Email/ { email=$2 }
END { print "Registrant", name, org, street, city, state, postal, country, phone, email }'

echo "$WHOIS_DATA" | awk '
BEGIN { FS=":"; OFS="," }
/Admin Name/ { name=$2 }
/Admin Organization/ { org=$2 }
/Admin Street/ { street=$2 }
/Admin City/ { city=$2 }
/Admin State/ { state=$2 }
/Admin Postal Code/ { postal=$2 }
/Admin Country/ { country=$2 }
/Admin Phone/ { phone=$2 }
/Admin Email/ { email=$2 }
END { print "Admin", name, org, street, city, state, postal, country, phone, email }'

echo "$WHOIS_DATA" | awk '
BEGIN { FS=":"; OFS="," }
/Tech Name/ { name=$2 }
/Tech Organization/ { org=$2 }
/Tech Street/ { street=$2 }
/Tech City/ { city=$2 }
/Tech State/ { state=$2 }
/Tech Postal Code/ { postal=$2 }
/Tech Country/ { country=$2 }
/Tech Phone/ { phone=$2 }
/Tech Email/ { email=$2 }
END { print "Tech", name, org, street, city, state, postal, country, phone, email }'
