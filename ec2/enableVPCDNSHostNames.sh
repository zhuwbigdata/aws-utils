#!/bin/bash
check_usage() {
  if [ $# -lt 1 ]
  then
    echo "Usage:"
    echo "$0  [vpc-id]"
    exit 1
  fi
}
check_usage $*
aws ec2 modify-vpc-attribute --vpc-id $1 --enable-dns-hostnames 
