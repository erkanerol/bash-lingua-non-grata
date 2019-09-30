#!/usr/bin/env bash

function create(){
  local item="$1"

  if grep "^$item$" "$USERS_FILE"; then
    echo "create: $item already exists" 1>&2
    return 1
  fi

  if [[ "$item" == "invalid" ]]; then
    echo "create: $item is invalid" 1>&2
    return 1
  fi

  echo -e "$item\n" >> "$USERS_FILE"
  echo "$item is created"
  return 0 
}