#! /bin/bash
up=$(eval sudo apt update && sudo apt upgrade)

echo "Starting ..."
echo "Update & Upgrade"
"$up"

echo "	[+] curl"
sudo apt install -y curl

echo "	[+] Flameshot"
"$up"
sudo apt install flameshot

echo "  [+] fd-find"
"$up"
sudo apt install fd-find
#TODO falta agregar el alias al .bash_profile
#

echo "Finished!"
