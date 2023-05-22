#!/bin/bash

echo "deb https://packages.cloud.google.com/apt coral-cloud-stable main" | sudo tee /etc/apt/sources.list.d/coral-cloud.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo apt-get update
sudo apt-get install python3-coral-cloudiot
python3 -c 'from coral.cloudiot.ecc608 import ecc608_serial; print("ATECC608A Serial:", ecc608_serial())'