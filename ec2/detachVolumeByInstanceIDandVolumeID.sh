#!/bin/bash
check_usage() {
  if [ $# -lt 2 ]
  then
    echo "Usage:"
    echo "$0  [instance-id] [volume_id]"
    exit 1
  fi
}
check_usage $*
aws ec2 dettach-volume --volume-id $2 --instance-id $1  
