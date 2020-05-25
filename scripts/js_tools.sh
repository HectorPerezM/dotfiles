#! /bin/bash

# Vars
PROFILE_PATH=~/.profile
NPM_PATH=~/.npm_global

echo "Starting ..."
echo "Update & Upgrade"
sudo apt update
sudo apt upgrade

echo "	[+] Node.js LTS"
#curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
#sudo apt-get install -y nodejs

echo "	Changing NPM default directory to avoid sudo"
echo "		- New Path: ${NPM_PATH}"

if [ ! -d $NPM_PATH ]; then
	mkdir $NPM_PATH
fi
npm config set prefix $NPM_PATH
#if [ -f "${PROFILE_PATH}" ]; then
#	echo "export PATH=${NPM_PATH}/bin:$PATH" >> ${PROFILE_PATH}
#else
#	touch $PROFILE_PATH
#	echo "export PATH=${NPM_PATH}/bin:$PATH" >> ${PROFILE_PATH}
#fi
source "${PROFILE_PATH}"

echo "	[+] Vue-CLI"
npm install -g @vue/cli



echo "Finished!"
