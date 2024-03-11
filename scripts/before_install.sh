#!/bin/bash

# Update package lists
apt-get update

apt install python3 python3-pip 

Install Python dependencies using pip
pip install Flask
pip install pytest
pip install requests

ls
pwd

DEPLOYMENT_DIR="/opt/codedeploy-agent/deployment-root/$DEPLOYMENT_GROUP_ID/$DEPLOYMENT_ID/deployment-archive"

# Change directory to the deployment bundle directory
cd "$DEPLOYMENT_DIR" || exit 1  # Exit if the directory doesn't exist
pwd
ls
