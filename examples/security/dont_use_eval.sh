#!/usr/bin/env bash

function func1(){
    echo "func1"
}

function func2(){
    echo "func2"
}

function func3(){
    echo "func3"
}

# don't run this script with 'rm -rf /*'
eval "$1"
