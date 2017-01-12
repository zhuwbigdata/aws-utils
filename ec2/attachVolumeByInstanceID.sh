#!/bin/bash
check_usage() {
  if [ $# -lt 2 ]
  then
    echo "Usage:"
    echo "$0  [instance-id] [volume_id] [device]"
    exit 1
  fi
}
check_usage $*
aws ec2 attach-volume --volume-id $2 --instance-id $1 --device $3 
