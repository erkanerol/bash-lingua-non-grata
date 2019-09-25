#!/usr/bin/env bash

# virtuous_lib_sourcer.sh

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "virtuous_lib_sourcer.sh .sh->> START"
ps -ef |grep virtuous_lib |grep -v 'grep'
echo "virtuous_lib_sourcer.sh .sh->> END"

# same shell & process
. "$SCRIPT_DIR/virtuous_lib.sh"

log_info " virtuous_lib_sourcer.sh can run these commands"
