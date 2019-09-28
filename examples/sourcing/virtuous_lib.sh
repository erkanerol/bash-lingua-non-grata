#!/usr/bin/env bash

# virtuous_lib.sh

function print_processes(){
    local caller="$1"
    echo -e "\n$caller ->> START"
    ps -ef |grep virtuous_lib |grep -v 'grep'
    echo -e "$caller ->> END\n"
}

function log_info() {
  print_processes "log_info"
  echo "$(date +%Y-%m-%dT%H:%M:%S%z) [INFO] $@"
}

print_processes "virtous_lib.sh"
