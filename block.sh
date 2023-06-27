#!/bin/bash

iptables -F
iptables -A INPUT -s 3.0.0.0/8 -j DROP
iptables -A OUTPUT -d 3.0.0.0/8 -j DROP
iptables -N AWS_BLOCK
for ip_range in $(curl -s https://ip-ranges.amazonaws.com/ip-ranges.json | jq -r '.prefixes[] | select(.service == "AMAZON") | .ip_prefix'); do
  iptables -A AWS_BLOCK -s "$ip_range" -j DROP
done

iptables -A INPUT -j AWS_BLOCK
