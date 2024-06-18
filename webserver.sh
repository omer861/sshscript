#!/bin/bash
# Update the package index
sudo yum update -y

# Install Apache HTTP Server
sudo yum install -y httpd

# Start the Apache HTTP Server
sudo systemctl start httpd

# Enable Apache to start on boot
sudo systemctl enable httpd

# Create the web page
echo "Welcome to page1" | sudo tee /var/www/html/index.html

# Restart Apache to ensure all changes are applied
sudo systemctl restart httpd
