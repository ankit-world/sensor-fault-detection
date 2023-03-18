#!bin/bash

sudo apt update

sudo apt-get update

# Create a folder
$ mkdir actions-runner && cd actions-runner
# Download the latest runner package
$ curl -o actions-runner-linux-x64-2.303.0.tar.gz -L https://github.com/actions/runner/releases/download/v2.303.0/actions-runner-linux-x64-2.303.0.tar.gz
# Optional: Validate the hash
$ echo "e4a9fb7269c1a156eb5d5369232d0cd62e06bec2fd2b321600e85ac914a9cc73  actions-runner-linux-x64-2.303.0.tar.gz" | shasum -a 256 -c
# Extract the installer
$ tar xzf ./actions-runner-linux-x64-2.303.0.tar.gz

# Create the runner and start the configuration experience

./config.sh --url https://github.com/ankit-world/sensor-fault-detection --token AVE6QUEO66EU7NPXGQVEGKDECXXP2

sudo ./svc.sh install

sudo ./svc.sh start

# Use this YAML in your workflow file for each job
#runs-on: self-hosted