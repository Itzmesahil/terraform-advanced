#!/bin/bash
sudo apt-get update
sudo apt-get install nginx -y
sudo systemctl restart nginx
sudo systemctl enable nginx
sudo echo "Hey Sahil, welcome to Terraform automation on $(hostname)" > /var/www/html/index.nginx-debian.html
