#!/bin/bash

echo cockpit setup start

sudo apt update || sudo apt install cockpit -y

sudo systemctl start cockpit

systemctl enable cockpit.socket
firewall-cmd --permanent --zone=public --add-service=cockpit
firewall-cmd --reload
