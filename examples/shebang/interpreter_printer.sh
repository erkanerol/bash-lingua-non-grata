#!/usr/bin/env bash

ps h -p $$ -o args='' | cut -f1 -d' '