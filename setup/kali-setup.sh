#!/bin/bash

# Update system
sudo apt-get update -y
sudo apt-get upgrade -y

# Install necessary tools
sudo apt-get install -y nmap curl wget git

# Optional: Set up a static IP if you need specific network configuration
# sudo nano /etc/network/interfaces

# Set up firewall for testing (optional)
sudo ufw enable
sudo ufw allow from any to any port 22 proto tcp

# Install essential packages for Elastic Agent integration
sudo apt-get install -y curl gnupg apt-transport-https

echo "Kali VM setup completed!"
