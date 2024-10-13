#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo mkdir -p /var/www/html/home
sudo systemctl start httpd
sudo systemctl enable httpd
sudo echo "<h1>this is my home page"$HOSTNAME"</h1>" >/var/www/html/home/index.html