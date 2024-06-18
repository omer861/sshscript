#!/bin/bash
# Update the package index
sudo yum update -y

# Install Apache HTTP Server
sudo yum install -y httpd

# Start the Apache HTTP Server
sudo service httpd start

# Enable Apache to start on boot
sudo chkconfig httpd on

# Create the web page
echo "Welcome to page1" | sudo tee /var/www/html/index.html

# Restart Apache to ensure all changes are applied
sudo service httpd restart
