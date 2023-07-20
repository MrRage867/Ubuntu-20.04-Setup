#!/bin/bash

# Download the JSON file containing AWS IP ranges
curl https://ip-ranges.amazonaws.com/ip-ranges.json -o ip-ranges.json

# Use jq to parse the JSON and iterate over the ranges
cat ip-ranges.json | jq -r '.prefixes[] | .ip_prefix' | while read range; do
    iptables -A INPUT -s $range -j DROP
done

# Remove the temporary JSON file
rm ip-ranges.json

# Save iptables rules
iptables-save
