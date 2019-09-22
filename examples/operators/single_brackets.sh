#!/usr/bin/env bash

number_of_args=$#

if [ $number_of_args -lt 1 ] || [ $number_of_args -gt 3 ]; then
  echo "Number of arguments can be between [1,3]"
  exit 1
fi

if [ $number_of_args -lt 1 || $number_of_args -gt 3 ]; then  # syntax error
  echo "Number of arguments can be between [1,3]"
  exit 1
fi
