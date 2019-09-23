#!/usr/bin/env bash

rm -f /tmp/io_redirection_stdout
rm -f /tmp/io_redirection_stderr

# will see the info in stdout
ls -la /usr/bin/env 1>>/tmp/io_redirection_stdout 2>>/tmp/io_redirection_stderr

# will see the error in stderr
ls -la /usr/bin/envvvvv 1>>/tmp/io_redirection_stdout 2>>/tmp/io_redirection_stderr