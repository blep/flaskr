#!/bin/bash


DEPLOYMENT_DIR="/opt/codedeploy-agent/deployment-root/$DEPLOYMENT_GROUP_ID/$DEPLOYMENT_ID/deployment-archive"

# Change directory to the deployment bundle directory
cd "$DEPLOYMENT_DIR" || exit 1  # Exit if the directory doesn't exist

python acceptance_tests.py

echo "application_start success"
