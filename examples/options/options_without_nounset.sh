#!/usr/bin/env bash

ENV_LIST_FILE="${DEBUG_FILE_PREFIX}_env_list"
echo "Printing curent environment to $ENV_LIST_FILE"
env > "$ENV_LIST_FILE"
