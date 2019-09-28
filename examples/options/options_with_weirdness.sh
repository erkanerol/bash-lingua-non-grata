#!/usr/bin/env bash

set -e 

# Assumes -e option
function check_prerequisites(){
    echo "Checking nonexisting binary"
    command -v nonexisting

    echo "Checking docker"
    command -v docker

    echo "Everything is ok!"
}

function prepare_prerequisites(){
    echo "Downloading nonexisting binary..."
    echo "Downloading docker binary..."

}

if ! check_prerequisites; then
  prepare_prerequisites
fi
