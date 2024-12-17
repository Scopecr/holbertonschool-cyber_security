#!/bin/bash

#check if domain is provided
if [ -z "$1" ]; then
	echo "Usage:$0 <domain>"
       exit 1
fi

domain=$1

#perform whois lookup
whois_output=$(whois $domain)

# Function to extract and format information
extract_info() {
  local label=$1
  local output=$(echo "$whois_output" | grep -E "^${label} ")

  local name=$(echo "$output" | grep -E "^${label} Name:" | cut -d: -f2- | xargs)
  local org=$(echo "$output" | grep -E "^${label} Organization:" | cut -d: -f2- | xargs)
  local street=$(echo "$output" | grep -E "^${label} Street:" | cut -d: -f2- | xargs)
  local city=$(echo "$output" | grep -E "^${label} City:" | cut -d: -f2- | xargs)
  local state=$(echo "$output" | grep -E "^${label} State/Province:" | cut -d: -f2- | xargs)
  local postal=$(echo "$output" | grep -E "^${label} Postal Code:" | cut -d: -f2- | xargs)
  local country=$(echo "$output" | grep -E "^${label} Country:" | cut -d: -f2- | xargs)
  local phone=$(echo "$output" | grep -E "^${label} Phone:" | cut -d: -f2- | xargs)
  local email=$(echo "$output" | grep -E "^${label} Email:" | cut -d: -f2- | xargs)
  
  echo "$label, $name, $org, $street, $city, $state, $postal, $country, $phone, $email"
}

# Print CSV header
echo "Type, Name, Organization, Street, City, State/Provinance, Postal Code, Country, Phone, Email"

# Extract and print Registrant, Admin, and Tech information
extract_info "Registrant"
extract_info "Admin"
extract_info "Tech"
