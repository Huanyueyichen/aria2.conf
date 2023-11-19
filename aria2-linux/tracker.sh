#!/bin/bash

list=`wget -qO- https://cf.trackerslist.com/all_aria2.txt|awk NF|sed ":a;N;s/\n/,/g;ta"`
if [ -z "`grep "bt-tracker" ./aria2.conf`" ]; then
    sed -i '$a bt-tracker='${list} ./aria2.conf
    echo add trackers successful
else
    sed -i "s@bt-tracker.*@bt-tracker=$list@g" ./aria2.conf
    echo update trackers successful
fi

systemctl --user restart aria2.service
