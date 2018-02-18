#!/bin/bash
cd `mktemp -d`

sudo apt install -y python pyton-pip git
sudo pip install ipfsapi

#install ipfs
wget https://dist.ipfs.io/go-ipfs/v0.4.13/go-ipfs_v0.4.13_linux-amd64.tar.gz
tar xzf go-ipfs_v0.4.13_linux-amd64.tar.gz
cd go-ipfs
sudo ./install.sh
cd ..

git clone https://github.com/6543/apt-transport-ipfs
sudo cp ./apt-transport-ipfs/ipfs /usr/lib/apt/methods/ipfs

