#!/bin/bash
apt-get update && apt-get upgrade -y
apt-get install -yq python-dev python-setuptools python-virtualenv python-pip git
mkdir /var/webapp
cd /var/webapp
virtualenv venv
source venv/bin/activate
pip install flask
git clone https://github.com/devstest/helloworld.git helloworld
cd helloworld
python webapp.py
