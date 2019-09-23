#!/usr/bin/env bash

# stdout -> stdout_file
command_example > stdout_file 

# appends stdout -> stdout_file
command_example >> stdout_file 

# stderr -> stderr_file
command_example 2>stderr_file 

# stdin&stderr -> out_file
command_example &>out_file 

# use in_file as stdin, out_file as stdout
command_example < in_file > out_file

#==============================================================================
M>N
# "M" is a file descriptor, which defaults to 1, if not explicitly set.
# "N" is a filename.
# File descriptor "M" is redirect to file "N."
M>&N
# "M" is a file descriptor, which defaults to 1, if not set.
# "N" is another file descriptor.

#==============================================================================

# stderr -> stdout
command_example 2>&1

# stdout -> out_file and then stderr -> stdout
command_example 1>out_file 2>&1 

# getting rid of outputs
command_example &>/dev/null

