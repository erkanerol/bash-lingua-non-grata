#!/usr/bin/env bash

which kubectl

tempfile=/tmp/tmpdata
trap "rm -f $tempfile" EXIT
