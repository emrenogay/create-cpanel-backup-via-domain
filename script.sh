#!/bin/bash

domain_file="/home/domains.txt"

declare -a domains=()

while IFS= read -r domain || [ -n "$domain" ]; do
  domains+=("$domain")
done < "$domain_file"

for domain in "${domains[@]}"; do
  
  username=$(/scripts/whoowns "$domain")

  if [ -n "$username" ]; then
    echo "Starting backup for $username"
    /scripts/pkgacct "$username"
    echo "Done for $username"
  else
    echo "Username not found for $domain"
  fi
done
