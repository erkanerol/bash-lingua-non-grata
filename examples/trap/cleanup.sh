#!/usr/bin/env bash

TMP_DIR="$(mktemp -d -t tmp.XXXXXXXXXX)"
echo "TMP_DIR=$TMP_DIR"

function cleanup(){
  echo "Exit signal is received. Cleaning tmp folders..."
  rm -rf "$TMP_DIR"
  echo "Cleanup is done"
}

trap cleanup EXIT

counter=0
while true
do
    echo Sleeping > "$TMP_DIR/sleep_$counter"
    ls "$TMP_DIR"
    sleep 2
    ((counter++))
done