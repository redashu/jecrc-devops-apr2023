#!/bin/bash
sudo yum install httpd -y 
sudo echo "Hello all" >/var/www/html/index.html
sudo systemctl start httpd
sudo systemctl enable httpd 
