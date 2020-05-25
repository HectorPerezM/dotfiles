#! /bin/bash

echo "Starting ..."
echo "Update & Upgrade"
sudo apt upgrade
sudo apt update

echo "	[+] curl"
sudo apt install -y curl

echo "	[+] Flameshot"
sudo apt install flameshot


echo "Finished!"
