# Set -E 

- `set -E`
- BASH normally only looks at the exit code of the last command of a pipeline

#### Without it

[filename](../../examples/options/options_without_capital_e.sh ':include :type=code bash')

```
bash ./examples/options/options_without_capital_e.sh
echo $?
```

#### With it

[filename](../../examples/options/options_with_capital_e.sh ':include :type=code bash')

```
bash ./examples/options/options_with_capital_e.sh
echo $?
```

<br><br><br><br><br>

### References
- https://www.tldp.org/LDP/abs/html/options.html
- https://www.gnu.org/software/bash/manual/html_node/The-Set-Builtin.html
- https://vaneyckt.io/posts/safer_bash_scripts_with_set_euxo_pipefail/