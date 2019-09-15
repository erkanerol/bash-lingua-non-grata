#!/usr/bin/env bash

echo '$*' $*  # $* erol 1 two one parameter
echo '$@' $@  # $@ erol 1 two one parameter 
echo '$0' $0  # $0 ./examples/variables/arguments.sh 
echo '$1' $1  # $1 erol 
echo '$2' $2  # $2 1 
echo '$3' $3  # $3 two 
echo '$4' $4  # $4 one parameter 
echo '$5' $5  # $5 
  
