#!/usr/bin/env bash

set -euo pipefail

trap "echo ERR trap fired!" ERR

myfunc()
{
  # 'foo' is a non-existing command
  foo
}

myfunc
echo "bar"
