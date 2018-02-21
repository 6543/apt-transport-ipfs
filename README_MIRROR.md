IPFS apt-transport-ifs Mirror

# Requirements

    sudo apt apt-mirror git gzip wget

to start ipfs on boot:
    https://github.com/6543/ipfs_daemon/blob/master/setup-ipfs-daemon

# Install

Copy the ipfs file from this repo to the directory for apt transport methods:

    git clone https://github.com/6543/apt-transport-ipfs
    cd apt-transport-ipfs/mirror
    ... [WIP] ...

Use the instruktions from https://github.com/6543/ipfs_daemon/blob/master/setup-ipfs-daemon to start ipfs on boot

    git clone https://github.com/6543/ipfs_daemon
    ... [WIP] ...
    su ipfs -c "ipfs config --json Experimental.FilestoreEnabled true"

# Configure

    # /etc/apt/mirror.list
    ... [WIP] ...

# ToDo:
 * use ipfs-cluster instead of ipfs (https://github.com/ipfs/ipfs-cluster/blob/master/docs/ipfs-cluster-guide.md)
 * write complet HowTo setup Mirror
