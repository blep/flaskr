#!/bin/bash

# Update package lists
apt-get update

apt install python3 python3-pip 

pwd
ls

# Install Python dependencies using pip
pip install -r /var/www/flask-app/requirements.txt
