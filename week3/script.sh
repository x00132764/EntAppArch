#!/bin/bash

#script to count CPUs


cnt=`grep "processor" /proc/cpuinfo | wc -l`

if [$cnt -le 2 ]; then
  echo "too few cpus, exiting"
fi
