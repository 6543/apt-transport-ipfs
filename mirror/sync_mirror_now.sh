#!/bin/bash

## start daemon if not started
ipfs daemon &

## prepare dirs ...
cd /home/maddl/.ipfs/mirror/
#sudo umount archive.ubuntu.com
#sudo umount archive.canonical.com
#sudo mount --bind /data/local/CryptoCurency/apt-mirror/mirror/archive.ubuntu.com/ubuntu/ archive.ubuntu.com
#sudo mount --bind /data/local/CryptoCurency/apt-mirror/mirror/archive.canonical.com/ubuntu/ archive.canonical.com

## mirror
sudo -u apt-mirror -g apt-mirror apt-mirror

#ipfs key gen --type=rsa --size=2048 archive.canonical.com
# -> QmUajtQCL6yHcBaYxsZKyD8QH7n977ZVxjU5yMXwYC183c
hash_canonical="$(ipfs add --progress --local --nocopy --fscache --recursive /home/maddl/.ipfs/mirror/archive.canonical.com/ | tail -n1)"
name_canonical="$(ipfs name publish --key=archive.canonical.com `echo $hash_canonical | cut -d ' ' -f 2` | cut -d ' ' -f 3 | tr -d :)"
echo "archive.canonical.com/ubuntu -> $name_canonical"
echo 'done'

#ipfs key gen --type=rsa --size=2048 archive.ubuntu.com
# -> QmXfAyjHThwksUyW9BwuqCDuzu1PM1XQkR1HVTbActvYDJ
hash_ubuntu="$(ipfs add --progress --local --nocopy --fscache --recursive /home/maddl/.ipfs/mirror/archive.ubuntu.com/ | tail -n1)"
name_ubuntu="$(ipfs name publish --key=archive.ubuntu.com `echo $hash_ubuntu | cut -d ' ' -f 2` | cut -d ' ' -f 3 | tr -d :)"
echo "archive.utuntu.com/ubuntu -> $name_ubuntu"
echo 'done'
