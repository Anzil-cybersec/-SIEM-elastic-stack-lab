#!/bin/bash

# Install Elastic Agent
sudo apt-get update
sudo apt-get install -y elastic-agent

# Enroll the agent with your Elastic Cloud instance
# (replace <your_elastic_url> and <your_token> with actual values)
sudo elastic-agent enroll --url=https://<your_elastic_url> --enrollment-token=<your_token>

# Start the Elastic Agent service
sudo systemctl start elastic-agent
sudo systemctl enable elastic-agent

# Check status of Elastic Agent
sudo systemctl status elastic-agent

echo "Elastic Agent setup completed!"
