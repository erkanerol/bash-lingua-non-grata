#!/usr/bin/env bash

function print_in_frame(){
    local header=$1
    echo "-----------------"
    echo "$header"              # you need to quote here to not lose new lines
    echo "-----------------"
}

function print_header(){
    local header=$1
    print_in_frame "$header"  # you need to quote here to pass as a single argument
}

example_header='Lingua 
Non 
Grata'

print_header "$example_header"          # you need to quote here to pass as a single argument