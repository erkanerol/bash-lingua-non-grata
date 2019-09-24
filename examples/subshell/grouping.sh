#!/usr/bin/env bash

dir="/non/existing/dir"
cd $dir || { echo "Couldn't change directory to $dir "; exit 1; }

