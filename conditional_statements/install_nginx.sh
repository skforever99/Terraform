#!/bin/bash/

sudo apt-get update
sudo apt-get install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx

echo "<h1>hello world, our ec2 is working </h1> " > /var/www/html/index.html
