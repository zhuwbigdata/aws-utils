#!/bin/bash
check_usage() {
  if [ $# -lt 1 ]
  then
    echo "Usage:"
    echo "$0  [user-name]" 
    exit 1
  fi
}
check_usage $*
aws iam get-user --user-name $1
