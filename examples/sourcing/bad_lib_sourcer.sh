#!/usr/bin/env bash

# bad_lib_sourcer.sh

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "bad_lib_sourcer.sh .sh->> START"
ps -ef |grep bad_lib |grep -v 'grep'
echo "bad_lib_sourcer.sh .sh->> END"

# same shell & process
. "$SCRIPT_DIR/bad_lib.sh"

# won't run this
echo -e "\n\nHi. I am the bad_lib_sourcer. I have already exited :/ "
