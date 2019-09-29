#!/usr/bin/env bash

function sleep_echo(){
    echo -e "$* \n\n"
    sleep 1
}

sleep_echo "Parent: Hello. I am the parent shell."
MY_VAR="ParentValue"
sleep_echo "Parent: The value of MY_VAR=$MY_VAR"
(
  sleep_echo "Child: Hello. I am the subshell."
  sleep_echo "Child: The value of MY_VAR=$MY_VAR"
  MY_VAR="ChildValue"
  sleep_echo "Child: For me, MY_VAR is $MY_VAR anymore"
  sleep_echo "Goodbye...."
)
sleep_echo "Parent: Hello. I am back! The parent. Did you miss me?"
sleep_echo "Parent: The value of MY_VAR=$MY_VAR"

