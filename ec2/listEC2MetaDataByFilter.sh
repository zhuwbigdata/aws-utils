#!/bin/bash
check_usage() {
  if [ $# -lt 1 ]
  then
    echo "Usage:"
    echo "$0  [filter: ami, etc.]"
    curl http://169.254.169.254/latest/meta-data/
    printf "\n"
    exit 1
  fi
}
check_usage $*
curl http://169.254.169.254/latest/meta-data/$*
printf "\n"
