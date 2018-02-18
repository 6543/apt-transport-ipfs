IPFS transport for apt

# Requirements

    sudo apt install python3-pip git
    sudo pip3 install ipfsapi
    sudo snap install ipfs
    ipfs init
    ipfs daemon &

# Install

Copy the ipfs file from this repo to the directory for apt transport methods:

    git clone https://github.com/JaquerEspeis/apt-transport-ipfs
    cd apt-transport-ipfs
    sudo cp ipfs /usr/lib/apt/methods/ipfs

# Configure

Add an IPFS mirror to your apt sources.list file. TODO set up a mirror.

# Hacky test

While we set up a proper IPFS mirror, this can be tested by using a hardcoded
IPFS hash that was manually set up to serve the hello deb.

Backup your /etc/apt/sources.list, remove all the lines that it has and leave it
just with:

    #archive.ubuntu.com
    deb [arch=amd64] ipfs:/ipns/QmXfAyjHThwksUyW9BwuqCDuzu1PM1XQkR1HVTbActvYDJ xenial main restricted universe multiverse
    deb [arch=amd64] ipfs:/ipns/QmXfAyjHThwksUyW9BwuqCDuzu1PM1XQkR1HVTbActvYDJ xenial-security main restricted universe multiverse
    deb [arch=amd64] ipfs:/ipns/QmXfAyjHThwksUyW9BwuqCDuzu1PM1XQkR1HVTbActvYDJ xenial-updates main restricted universe multiverse 
    deb-src ipfs:/ipns/QmXfAyjHThwksUyW9BwuqCDuzu1PM1XQkR1HVTbActvYDJ xenial main restricted universe multiverse
    deb-src ipfs:/ipns/QmXfAyjHThwksUyW9BwuqCDuzu1PM1XQkR1HVTbActvYDJ xenial-security main restricted universe multiverse
    deb-src ipfs:/ipns/QmXfAyjHThwksUyW9BwuqCDuzu1PM1XQkR1HVTbActvYDJ xenial-updates main restricted universe multiverse

    #archive.canonical.com
    deb [arch=amd64] ipfs:/ipns/QmUajtQCL6yHcBaYxsZKyD8QH7n977ZVxjU5yMXwYC183c xenial partner
    deb-src ipfs:/ipns/QmUajtQCL6yHcBaYxsZKyD8QH7n977ZVxjU5yMXwYC183c xenial partner



This IPFS node is not permanent jet ...

from JáquerEspeis.
