#!/bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y

# install nginx
sudo apt-get install nginx -y
sudo sed -i '51s/.*/\t        proxy_pass http:\/\/localhost:3000;/' /etc/nginx/sites-enabled/default
sudo systemctl restart nginx
sudo systemctl enable nginx

# visit public ip to ensure nginx is running
curl -fsSL https://deb.nodesource.com/setup_10.x | sudo -E bash - && sudo apt-get install -y nodejs

sudo apt install npm -y

sudo npm install pm2 -g

EOF

# Update the sources list
# sudo apt-get update -y

# upgrade any packages available
# sudo apt-get upgrade -y

# sudo apt-get install nginx -y
# sudo sed -i '51s/.*/\t        proxy_pass http:\/\/localhost:3000;/' /etc/nginx/sites-enabled/default
# sudo systemctl restart nginx
# sudo systemctl enable nginx

# install git
# sudo apt-get install git -y

# install nodejs
# sudo apt-get install python-software-properties -y
# curl -fsSL https://deb.nodesource.com/setup_10.x | sudo -E bash - && sudo apt-get install -y nodejs

# sudo apt install npm -y
# sudo npm install pm2 -g

# remove the old file and add our one
#sudo rm /etc/nginx/sites-available/default
#sudo cp /home/ubuntu/sre_jenkins_cicd/environment/app/nginx.default /etc/nginx/sites-available/default

# finally, restart the nginx service so the new config takes hold
#sudo service nginx restart
#sudo service nginx enable
