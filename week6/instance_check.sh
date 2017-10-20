#!/bin/bash

cnt=`aws ec2 describe-instance-status --instance-ids $1 | grep running | wc -l`

if [ $cnt -gt 0 ]; then
    echo "instance running"
else
    echo "instance not running"
fi
