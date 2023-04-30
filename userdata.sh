#!/bin/bash
git clone https://github.com/amchp/reto4.git
cd reto4
chmod +x dockersetup.sh
./dockersetup.sh
cd moodle
sudo docker compose up