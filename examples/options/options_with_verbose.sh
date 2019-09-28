#!/usr/bin/env bash

# Echoes all commands before executing.
# 'set -o verbose' is same
set -v 

echo "I am running echo"
pwd
echo "I am going to disable the option"

set +v

echo "After disabling the option"

exit 0
