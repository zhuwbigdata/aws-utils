#!/bin/bash
check_usage() {
  if [ $# -lt 4 ]
  then
    echo "Usage:"
    echo "$0  [sg-group-id] [protocol] [port] [CIDR]"
    exit 1
  fi
}
check_usage $*
# Inbound connections from what specified
aws ec2 authorize-security-group-ingress --group-id $1 --protocol $2 --port $3 --cidr $4
