#!/usr/bin/env bash

# virtuous_lib_runner.sh

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "virtuous_lib_runner.sh->> START"
ps -ef |grep virtuous_lib |grep -v 'grep'
echo "virtuous_lib_runner.sh->> END"

cd "$SCRIPT_DIR"

# creates new shell and process
./virtuous_lib.sh

log_info "virtuous_lib_runner.sh can run these commands"
