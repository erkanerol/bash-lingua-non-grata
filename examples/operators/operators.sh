#!/usr/bin/env bash

if test -z "$1"; then   # equvalent to [ -z "$1"]
  echo "No command-line arguments."
  exit 1
fi

file="$1"

# check if file is a regular file
if ! [[ -f "$file" ]]; then
  echo "$file is not a regular file!"
  exit 2
else
  echo "$file is a regular file!"
  exit 0
fi

