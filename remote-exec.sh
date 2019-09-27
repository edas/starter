#!/usr/bin/env bash

# curl -fsSL https://raw.githubusercontent.com/edas/starter/master/remote-exec.sh | /usr/bin/env bash

mkdir starter-install
pushd starter-install
wget https://github.com/edas/starter/archive/master.zip
unzip master.zip
pushd starter-master
./link && ./install && ./starter && popd && popd && rm -rf starter-install
