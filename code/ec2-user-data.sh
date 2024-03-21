#!/bin/bash
# Use this for your user data (script from top to bottom)
# install httpd (Linux 2 version)

yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
EC2_AZ=$(curl -s http://169.254.169.254/latest/meta-data/placement/availability-zone)
echo “<h1> Yiasou from $(hostname -f) located in $EC2_AZ </h1>” > /var/www/html/index.html