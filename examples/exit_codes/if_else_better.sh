#!/usr/bin/env bash

# better
if ! ls /tmp/non_existing; then
    echo "Couldn't list the directory!"
    exit 111
fi

exit 0
