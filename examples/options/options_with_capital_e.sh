#!/usr/bin/env bash

set -Eeuo pipefail

trap "echo ERR trap fired!" ERR

myfunc()
{
  # 'foo' is a non-existing command
  foo
}

myfunc
echo "bar"
