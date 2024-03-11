#!/bin/bash

# Update package lists
apt-get update

apt install python3 python3-pip 

# Install Python dependencies using pip
# pip install Flask
# pip install pytest
# pip install requests

pwd
ls

# Find the latest deployment directory
LATEST_DEPLOYMENT_DIR=$(find /opt/codedeploy-agent/deployment-root/*/deployment-archive/ -type d -printf '%T@ %p\n' | sort -n | tail -1 | awk '{print $2}')

if [ -z "$LATEST_DEPLOYMENT_DIR" ]; then
  echo "ERROR: No deployment directory found."
  exit 1
fi

# Search for requirements.txt in the latest deployment directory
REQUIREMENTS_FILE=$(find "$LATEST_DEPLOYMENT_DIR" -name 'requirements.txt' -type f)

if [ -z "$REQUIREMENTS_FILE" ]; then
  echo "ERROR: requirements.txt not found in the latest deployment directory."
  exit 1
fi

# Install Python dependencies using pip
pip install -r "$REQUIREMENTS_FILE"
