#!/bin/bash

# Install Nginx
sudo apt update
sudo apt install nginx -y

# Install Node.js and npm
curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install PM2 globally
sudo npm install -g pm2

# Add the Web Application Code 

# Install project dependencies
    # cd app
    # npm init
    # npm install express

# Start your Node.js application using PM2
    # pm2 start app.js

# Configure Nginx (optional)
# Modify the Nginx configuration file (/etc/nginx/sites-available/default) to proxy requests to your Node.js application.
# Below is an example configuration assuming your application runs on port 3000:
# sudo sed -i 's/# server_name/server_name/g' /etc/nginx/sites-available/default
# sudo sed -i 's/#\tlocation \/ {/location \/ {/g' /etc/nginx/sites-available/default
# sudo sed -i 's/#\t\tproxy_pass http:\/\/localhost:3000;/\t\tproxy_pass http:\/\/localhost:3000;/g' /etc/nginx/sites-available/default
# sudo sed -i 's/#\t}/\t}/g' /etc/nginx/sites-available/default

# Restart Nginx
# sudo systemctl restart nginx