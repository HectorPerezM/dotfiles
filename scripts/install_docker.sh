#! /bin/bash


# TODO
#	- Agregar variables para manejar versiones
#	- Agregar variables para manejar urls de descarga

echo "Installing ..."
echo "	[+] Docker"

sudo apt update
sudo apt upgrade

sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt update
sudo apt install docker-ce

echo "		Configuring sudo"
sudo usermod -aG docker ${USER}
sudo - ${USER}
id -nG

echo "	[+] Docker-Compose"

sudo wget -O  /usr/local/bin/docker-compose https://github.com/docker/compose/releases/download/1.25.0/docker-compose-Linux-x86_64
sudo chmod +x /usr/local/bin/docker-compose

echo "Finished!"
