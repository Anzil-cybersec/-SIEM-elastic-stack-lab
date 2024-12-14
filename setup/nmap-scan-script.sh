#!/bin/bash

# Define the target IP (replace with your actual target IP)
TARGET_IP="<target_ip>"

# Run different Nmap scans to generate events
echo "Running SYN scan on $TARGET_IP..."
sudo nmap -sS $TARGET_IP

echo "Running TCP connect scan on $TARGET_IP..."
sudo nmap -sT $TARGET_IP

echo "Running full port scan on $TARGET_IP..."
sudo nmap -p- $TARGET_IP

echo "Nmap scan events generated!"
