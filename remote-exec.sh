#!/usr/bin/env bash

# curl -fsSL https://raw.githubusercontent.com/edas/starter/master/remote-exec.sh | /usr/bin/env bash

if [ ! -e "./starter-master" ]; then
  if [ ! -e "./starter-master.zip" ]; then
    curl https://github.com/edas/starter/archive/master.zip -L -o starter-master.zip
  fi
  unzip starter-master.zip
fi  
pushd starter-master && ./link && ./install && ./starter && popd && rm -rf starter-master*
