#!/bin/sh

# Install base tools
sudo apt install -y \
	curl \
	node \
	npm \
    git \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

sudo apt-get update

# Install ZSH
sudo apt install -y zsh
chsh -s $(which zsh)
./install-zsh-plugins.sh

# Install docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --batch --dearmor --yes -o /usr/share/keyrings/docker-archive-keyring.gpg

echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get install -y \
    containerd.io \
    docker-ce \
    docker-ce-cli

sudo usermod $USER --append --group docker