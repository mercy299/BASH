#!/usr/bin/env bash

# Step 1:
# If you're running a very minimal distribution (such as a Docker container)
# you may need to install lsb-release first
sudo apt install lsb-release

# Step 2:
# Add the repository to the apt index, update it, and then install
curl -fsSL https://packages.redis.io/gpg | sudo gpg --dearmor -o /usr/share/keyrings/redis-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/redis-archive-keyring.gpg] https://packages.redis.io/deb $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/redis.list

sudo apt-get update
sudo apt-get install redis