#!/bin/bash

# Update package lists
apt-get update

apt install python3 python3-pip 

# Install Python dependencies using pip
pip install Flask
pip install pytest
pip install requests
