#!/bin/bash
check_usage() {
  if [ $# -lt 3 ]
  then
    echo "Usage:"
    echo "$0  [route-table-id] [destination-CIDR] [igw-id]"
    exit 1
  fi
}
check_usage $*
aws ec2 create-route --route-table-id $1 --destination-cidr-block $2 --gateway-id $3
