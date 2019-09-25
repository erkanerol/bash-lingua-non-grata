#!/usr/bin/env bash

# bad_lib_runner.sh

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "bad_lib_runner.sh->> START"
ps -ef |grep virtuous_lib |grep -v 'grep'
echo "bad_lib_runner.sh->> END"

cd "$SCRIPT_DIR"

# creates new shell and process
./virtuous_lib.sh

log_info "bad_lib_runner.sh can run these commands"

echo -e "\n\nHi. I am the bad_lib_runner. I am still alive even tough I cannot run log_info"