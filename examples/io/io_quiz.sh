#!/usr/bin/env bash

# stdout -> stdout_file
command_example > stdout_file 

# appends stdout -> stdout_file
command_example >> stdout_file 

# stderr -> stderr_file
command_example 2>stderr_file 

# stdin&stderr -> out_file
command_example &>out_file 


#==============================================================================
M>N
# "M" is a file descriptor, which defaults to 1, if not explicitly set.
# "N" is a filename.
# File descriptor "M" is redirect to file "N."
M>&N
# "M" is a file descriptor, which defaults to 1, if not set.
# "N" is another file descriptor.

#==============================================================================

#stderr -> stdout
command_example 2>&1

#stderr -> stdout and then stdout -> out_file
command_example 2>&1 1>out_file


