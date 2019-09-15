#!/usr/bin/env bash

FILE_NAME=example

echo FILE_NAME          # prints FILE_NAME
echo ${FILE_NAME}       # variable substitution
echo $FILE_NAME         # simpler form
echo ${FILE_NAME}_yaml  #prints 'example_yaml'
echo $FILE_NAME_yaml    #prints nothing