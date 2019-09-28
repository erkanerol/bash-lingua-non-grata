# Pipefail option

- `set -o pipefail`
- If set, the return value of a pipeline is the value of the last (rightmost) command to exit with a non-zero status, or zero if all commands in the pipeline exit successfully. 
- This option is disabled by default.



[filename](../../examples/options/options_without_pipefail.sh ':include :type=code bash')

[filename](../../examples/options/options_with_pipefail.sh ':include :type=code bash')

#### Demo
```
bash ./examples/options/options_without_pipefail.sh
```

```
bash ./examples/options/options_with_pipefail.sh
```

<br><br><br><br><br>

### References
- https://www.tldp.org/LDP/abs/html/options.html
- https://www.gnu.org/software/bash/manual/html_node/The-Set-Builtin.html