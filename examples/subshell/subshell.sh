#!/usr/bin/env bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

function sleep_echo(){
    echo -e "$* \n\n"
    sleep 1
}

sleep_echo "Hello. I am the parent shell."
ps -ef |grep $$
sleep_echo "Now I am here: $PWD"
sleep_echo "I am creating a subshell now..."
(
  sleep_echo "Hello. I am the subshell."
  ps -ef |grep $$
  sleep_echo "I am changing current directory to $SCRIPT_DIR"
  cd "$SCRIPT_DIR"
  sleep_echo "Now I am here: $PWD"
  sleep_echo "I need to say goodbye :/"
  sleep_echo "Goodbye...."
)
sleep_echo "Hello. I am back! The parent. Did you miss me?"
sleep_echo "I am still here: $PWD"

