#!/bin/bash

cnt=`ls /tmp | wc -l`
maxnum=3

if [ $cnt -ge $maxnum ]; then
  echo "`date` Max number of files ($cnt) exceeded in /tmp >> /home/epa/log.txt"
fi
