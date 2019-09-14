# Exit Codes

- Every command returns an exit code
- 0 = successful
- Non-zero = unsuccessful
- The last command executed in the function or script determines the exit status
- `$?` = exit code of last command

### Examples

[filename](../../examples/exit_codes/successful.sh ':include :type=code bash')

[filename](../../examples/exit_codes/explicit_unsuccessful.sh ':include :type=code bash')

[filename](../../examples/exit_codes/implicit_unsuccessful.sh ':include :type=code bash')

#### Demo
```
bash ./examples/exit_codes/successful.sh 
echo $?

bash ./examples/exit_codes/explicit_unsuccessful.sh
echo $?

bash ./examples/exit_codes/implicit_unsuccessful.sh
echo $?
```


<br><br><br><br><br>

### References
- https://www.tldp.org/LDP/abs/html/exit-status.html