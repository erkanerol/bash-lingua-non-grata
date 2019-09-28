# Errexit option

- `set -e` or `set -o errexit`
- By default, when a program fails, Bash will just keep running.
- With this option, BASH exits immediately if a simple command, a pipeline or a compound command (loop, conditionals, command groups) returns a non-zero status.
- There are some exceptions.


#### Without Errexit
[filename](../../examples/options/options_without_errexit.sh ':include :type=code bash')

```
bash ./examples/options/options_without_errexit.sh
echo $?
```

#### Without Errexit - Alternative
[filename](../../examples/options/options_without_errexit_alternative.sh ':include :type=code bash')

```
bash ./examples/options/options_without_errexit_alternative.sh
echo $?
```

#### With Errexit
[filename](../../examples/options/options_with_errexit.sh ':include :type=code bash')

```
bash ./examples/options/options_with_errexit.sh
echo $?
```


#### With Errexit - Exceptions

- The shell does not exit if the command that fails is part of the command list immediately following a while or until keyword, part of the test in an if statement, part of any command executed in a && or || list except the command following the final && or ||, any command in a pipeline but the last, or if the command’s return status is being inverted with !.

[filename](../../examples/options/options_with_errexit_exceptions.sh ':include :type=code bash')

```
bash ./examples/options/options_with_errexit_exceptions.sh
echo $?
```


#### Weirdness of `-e`
[filename](../../examples/options/options_with_weirdness.sh ':include :type=code bash')

```
bash ./examples/options/options_with_weirdness.sh
echo $?
```



<br><br><br><br><br>

### References
- https://www.tldp.org/LDP/abs/html/options.html
- https://www.gnu.org/software/bash/manual/html_node/The-Set-Builtin.html