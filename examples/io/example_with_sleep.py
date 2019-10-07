import sys
import time

# read from stdin = 0
input_var = input("give me anything\n")

# print to stdout = 1
print("Stdout example: {}".format(input_var))

# print to stderr = 2
print("Stderr example: {}".format(input_var), file=sys.stderr)

time.sleep(300)