#!/usr/bin/env bash

which kubectl

tempfile=/tmp/tmpdata
trap "rm -f $tempfile" EXIT

if [ -f $MY_VAR ]; then
  echo "Hello!"
fi

echo "Redirection example" 2>&1 1>/dev/null

cat file_example |grep "Search Key"
