#!/usr/bin/env bash

# setting directory of this file
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

example_id="$1"

if [[ "${example_id}" == "1" ]]; then
    cat "$SCRIPT_DIR/docker_images.output"
    exit
fi

if [[ "${example_id}" == "2" ]]; then
    cat "$SCRIPT_DIR/docker_images.output" | grep '3 months ago'
    exit
fi

if [[ "${example_id}" == "3" ]]; then
    cat "$SCRIPT_DIR/docker_images.output" | grep '3 months ago' | cut -d ' ' -f1
    exit
fi

if [[ "${example_id}" == "4" ]]; then
    cat "$SCRIPT_DIR/docker_images.output" | grep '3 months ago' | cut -d ' ' -f1 | sort -u
    exit
fi


if [[ "${example_id}" == "5" ]]; then
    # we don't need cat. this is better
    grep '3 months ago' < "$SCRIPT_DIR/docker_images.output" | cut -d ' ' -f1 | sort -u
    exit
fi

if [[ "${example_id}" == "6" ]]; then
    # The best
    grep '3 months ago' "$SCRIPT_DIR/docker_images.output" | cut -d ' ' -f1 | sort -u
    exit
fi