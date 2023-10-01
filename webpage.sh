#!/bin/bash



sudo apt-get update -y
sudo apt-get install git -y
git clone https://github.com/pradip2994/Network_Firewall.git


#Install apache2

sudo apt-get update -y
sudo apt-get install -y nginx

sudo rm /var/www/html/*

sudo cp -r /home/ubuntu/Network_Firewall/* /var/www/html/
                                                            
