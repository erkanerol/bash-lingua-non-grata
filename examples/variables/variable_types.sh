#!/usr/bin/env bash

int_var=111
string_var=content
content=7

var2=$int_var+1 # int_var is a char seq in this context

((var3=int_var+1)) # int_var is an integer in this context
let "var4 += int_var+1"

((var5=int_var+string_var))

let "var6 += int_var+'test'" # syntax error

echo "var2" $var2  # 111+1
echo "var3" $var3  # 112
echo "var4" $var4  # 112
echo "var5" $var5  # 118