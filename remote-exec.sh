#!/usr/bin/env bash

# curl -fsSL https://raw.githubusercontent.com/edas/starter/master/remote-exec.sh | /usr/bin/env bash

curl https://github.com/edas/starter/archive/master.zip -L -o starter-master.zip
unzip starter-master.zip
pushd starter-master
./link && ./install && ./starter && popd && rm -rf starter-master*
