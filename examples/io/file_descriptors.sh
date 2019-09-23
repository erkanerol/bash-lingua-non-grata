#!/usr/bin/env bash

head -c 8 <0
echo "Stdout example"
echo "Stderr example" 1>&2
sleep 300