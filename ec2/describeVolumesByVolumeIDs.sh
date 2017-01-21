#!/bin/bash
check_usage() {
  if [ $# -lt 1 ]
  then
    echo "Usage:"
    echo "$0  [volume-ids]"
    exit 1
  fi
}
check_usage $*
aws ec2 describe-volumes --volume-ids $1
