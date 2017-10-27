#!/bin/bash

#* * * * * * /home/epa/EPA/EntAppArch/week6/instance_check.sh
cnt1=`aws ec2 describe-instance-status --instance-ids i-033390d4b2e4fb049 | grep running | wc -l`

if [ $cnt1 -gt 0 ]; then
    echo "instance running"
else
    echo "i-033390d4b2e4fb049 not running" >> instanceHealthCheck.txt
fi

cnt2=`aws ec2 describe-instance-status --instance-ids i-07bc96b8192810fe0 | grep running | wc -l`

if [ $cnt2 -gt 0 ]; then
    echo "instance running"
else
    echo "i-07bc96b8192810fe0 not running" >> instanceHealthCheck.txt
fi

