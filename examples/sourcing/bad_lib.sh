#!/usr/bin/env bash

# bad_lib.sh

function print_processes(){
    local caller="$1"
    echo -e "\n$caller ->> START"
    ps -ef |grep bad_lib |grep -v 'grep'
    echo -e "\n$caller ->> END"
}

function log_info() {
  print_processes "log_info"
  echo "$(date +%Y-%m-%dT%H:%M:%S%z) [INFO] $@"
}

print_processes "bad_lib.sh"
echo "I am exiting since I am bad"
exit 1
