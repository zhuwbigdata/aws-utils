#!/bin/bash
check_usage() {
  if [ $# -lt 2 ]
  then
    echo "Usage:"
    echo "$0  [VPC_ID} [CIDR_BLOCK, e.g. 10.0.0.0/28-16]"
    exit 1
  fi
}
check_usage $*
aws ec2 create-subnet --vpc-id  $1 --cidr-block $2
