#!/bin/bash

# Update package lists
apt-get update

apt install python3 python3-pip 

pwd
ls
find . -name "requirements.txt"

# Install Python dependencies using pip
pip install -r requirements.txt
