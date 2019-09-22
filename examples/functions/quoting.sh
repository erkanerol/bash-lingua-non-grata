#!/usr/bin/env bash

function print_header(){
    local header="$1" # better to assign a local variable

    echo "-------------"
    echo "$header"
    echo "-------------"
}

header="Lingua Non Grata"  # header keeps the value without quotes 
print_header $header       # when BASH substitutes the variable, there is no quote.
print_header "$header"     # we need to put qoutes again to pass it as a single argument
print_header '$header'     # single quote -> no  substitution