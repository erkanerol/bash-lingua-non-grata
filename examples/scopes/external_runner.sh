#!/usr/bin/env bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

function sleep_echo(){
    echo -e "$* \n\n"
    sleep 1
}

sleep_echo "Parent: Hello. I am the parent shell."
MY_VAR="ParentValue"
sleep_echo "Parent: The value of MY_VAR=$MY_VAR"

cd "$SCRIPT_DIR"

# creates new shell and process
./external_script.sh

sleep_echo "Parent: Hello. I am back! The parent. Did you miss me?"
sleep_echo "Parent: The value of MY_VAR=$MY_VAR"

