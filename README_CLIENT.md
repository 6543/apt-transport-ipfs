IPFS transport for apt

# Requirements

    sudo apt install python-pip git gzip wget
    sudo pip install ipfsapi

# Install

Copy the ipfs file from this repo to the directory for apt transport methods:

    git clone https://github.com/6543/apt-transport-ipfs
    cd apt-transport-ipfs/client
    sudo cp ipfs /usr/lib/apt/methods/ipfs

Use the instruktions from https://github.com/6543/ipfs_daemon/blob/master/setup-ipfs-daemon to start ipfs on boot

# Configure

Add an IPFS mirror to your apt sources.list file.

Backup your /etc/apt/sources.list, remove all the lines that it has and leave it
just with:

    #archive.ubuntu.com
    deb ipfs:/ipns/QmXfAyjHThwksUyW9BwuqCDuzu1PM1XQkR1HVTbActvYDJ xenial main restricted universe multiverse
    deb ipfs:/ipns/QmXfAyjHThwksUyW9BwuqCDuzu1PM1XQkR1HVTbActvYDJ xenial-security main restricted universe multiverse
    deb ipfs:/ipns/QmXfAyjHThwksUyW9BwuqCDuzu1PM1XQkR1HVTbActvYDJ xenial-updates main restricted universe multiverse
    deb-src ipfs:/ipns/QmXfAyjHThwksUyW9BwuqCDuzu1PM1XQkR1HVTbActvYDJ xenial main restricted universe multiverse
    deb-src ipfs:/ipns/QmXfAyjHThwksUyW9BwuqCDuzu1PM1XQkR1HVTbActvYDJ xenial-security main restricted universe multiverse
    deb-src ipfs:/ipns/QmXfAyjHThwksUyW9BwuqCDuzu1PM1XQkR1HVTbActvYDJ xenial-updates main restricted universe multiverse

    #archive.canonical.com
    deb ipfs:/ipns/QmUajtQCL6yHcBaYxsZKyD8QH7n977ZVxjU5yMXwYC183c xenial partner
    deb-src ipfs:/ipns/QmUajtQCL6yHcBaYxsZKyD8QH7n977ZVxjU5yMXwYC183c xenial partner

# New archives:

if you like to add other archives to IPFS, i have ~ 100GB more ...
just open an issue and we can debate it.
