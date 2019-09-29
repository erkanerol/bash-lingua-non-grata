#!/usr/bin/env bash

echo "Child: MY_VAR=$MY_VAR"

sleep_echo "Child: Hello. I am the subshell."
sleep_echo "Child: The value of MY_VAR=$MY_VAR"
MY_VAR="ChildValue"
sleep_echo "Child: For me, MY_VAR is $MY_VAR anymore"
sleep_echo "Goodbye...."