#!/usr/bin/env bash

set -euox pipefail

export PATH="/mnt/c/Windows/system32:${PATH}"

netsh.exe interface portproxy delete v4tov4 listenport=22 || :
ip address show eth0 \
  | sed -ne 's/^ *inet \([0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\)\/.*$/\1/p' \
  | xargs -I{} netsh.exe interface portproxy add v4tov4 \
    listenport=22 connectport=22 listenaddress=localhost connectaddress={}
sc.exe config iphlpsvc start=auto
# sc.exe start iphlpsvc

service ssh restart
