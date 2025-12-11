#!/bin/bash
yum update -y
curl -sL https://rpm.nodesource.com/setup_16.x | bash -
yum install -y nodejs git

mkdir -p /opt/app
cd /opt/app

echo "Cloning repo..."
git clone https://github.com/YOUR_GITHUB/one-click-asg-alb.git
cd one-click-asg-alb/app

npm install
npm install pm2 -g
pm2 start server.js
pm2 startup
pm2 save