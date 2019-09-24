#!/usr/bin/env bash

function create(){
  local item="$1"

  if [[ "$item" == "existing" ]]; then
    echo "create: $item already exists" 1>&2
    return 1
  fi

  if [[ "$item" == "invalid" ]]; then
    echo "create: $item is invalid" 1>&2
    return 1
  fi

  echo "$item is created"
  return 0 
}

# I have a list to create items
raw_text_for_items='newone    123
newestone      456
existing  789
invalid     000'

items="$(echo "$raw_text_for_items" |cut -d' ' -f1)"

echo "items: '$items'"

for item in $items
do
    echo -n "Creating item: '$item'..."
    if create_output="$(create "$item" 2>&1)"; then
      echo "CREATED!"
    else
      if echo "$create_output" |grep -q "already exists"; then
        echo "ALREADY EXIST!"
      else
        echo "Couldn't created. Error: $create_output"
        exit 1
      fi
    fi
done

