#!/usr/bin/env bash

set -e 

cd /non/existing/dir || echo "I cannot change directory"

if ! curl -0 "https://non_existing_file"; then
    echo "I cannot download the file."
fi

echo "I am still alive...."

exit 0
