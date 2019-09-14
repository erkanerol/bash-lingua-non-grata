#!/usr/bin/env bash

ls /tmp/non_existing
if [ $? -ne 0 ]; then
    echo "Couldn't list the directory!"
    exit 111
fi

exit 0
