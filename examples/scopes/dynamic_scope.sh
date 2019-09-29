#!/usr/bin/env bash

function inner(){
    var='Inner Value'
    echo "inner: value of var=$var"
}

function outer(){
    local var='Outer Value'
    echo "outer: value of var=$var"
    inner
    echo "outer: value of var=$var"
}

echo "main: value of var=$var"
outer
echo "main: value of var=$var"