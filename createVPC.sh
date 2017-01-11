#!/bin/bash
check_usage() {
  if [ $# -lt 1 ]
  then
    echo "Usage:"
    echo "$0  [CIDR_BLOCK, e.g. 10.0.0.0/28-16]" 
    exit 1
  fi
}
check_usage $*
aws ec2 create-vpc --cidr-block $1

