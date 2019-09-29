# Pipefail option

- `set -o pipefail`
- BASH normally only looks at the exit code of the last command of a pipeline
- This behavior is not ideal as it causes the -e option to only be able to act on the exit code of a pipeline’s last command
- This particular option sets the exit code of a pipeline to that of the rightmost command to exit with a non-zero status, or to zero if all commands of the pipeline exit successfully.

#### Without Pipefail

[filename](../../examples/options/options_without_pipefail.sh ':include :type=code bash')

```
bash ./examples/options/options_without_pipefail.sh
echo $?
```

#### With Pipefail

[filename](../../examples/options/options_with_pipefail.sh ':include :type=code bash')

```
bash ./examples/options/options_with_pipefail.sh
echo $?
```

<br><br><br><br><br>

### References
- https://www.tldp.org/LDP/abs/html/options.html
- https://www.gnu.org/software/bash/manual/html_node/The-Set-Builtin.html
- https://vaneyckt.io/posts/safer_bash_scripts_with_set_euxo_pipefail/