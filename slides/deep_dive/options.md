# Options

- Options are settings that change shell and/or script behavior.
- Enabling an option `set -o option-name` or `set -option-abbrev`
- Disabling an option `set +o option-name` or `set +option-abbrev`


[filename](../../examples/options/options_without_verbose.sh ':include :type=code bash')

[filename](../../examples/options/options_with_verbose.sh ':include :type=code bash')

#### Demo
```
bash ./examples/options/options_without_verbose.sh
```

```
bash ./examples/options/options_with_verbose.sh
```
 
```
bash -v ./examples/options/options_without_verbose.sh
```

<br><br><br><br><br>

### References
- https://www.tldp.org/LDP/abs/html/options.html