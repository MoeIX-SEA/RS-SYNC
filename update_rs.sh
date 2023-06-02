#!/bin/bash
cd $1
export PATH=/usr/sbin:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games
export conf_name=$2
curl -fO https://raw.githubusercontent.com/MoeIX-SEA/RS-Generator/master/$conf_name.md5
if md5sum -c $conf_name.md5; then
    # The MD5 sum matched
    birdc c
    true
else
    curl -fO https://raw.githubusercontent.com/MoeIX-SEA/RS-Generator/master/$conf_name
    birdc c
fi
