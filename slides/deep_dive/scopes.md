# Scopes

- A variable declared as local is one that is visible only within the block of code in which it appears.

#### Simple Example

[filename](../../examples/scopes/simple_scope.sh ':include :type=code bash')

```
bash ./examples/scopes/simple_scope.sh
```

#### Dynamic Scope

- The scope of a variable is dynamic in BASH

[filename](../../examples/scopes/dynamic_scope.sh ':include :type=code bash')

```
bash ./examples/scopes/dynamic_scope.sh
```

#### Subshell Scope

[filename](../../examples/scopes/subshell_scope.sh ':include :type=code bash')

```
bash ./examples/scopes/subshell_scope.sh
```

#### Scope of Other Processes 

[filename](../../examples/scopes/external_script.sh ':include :type=code bash')

[filename](../../examples/scopes/external_runner.sh ':include :type=code bash')

```
bash ./examples/scopes/external_runner.sh
```

#### We need `export` for other processes

[filename](../../examples/scopes/external_runner_with_export.sh ':include :type=code bash')

```
bash ./examples/scopes/external_runner_with_export.sh
```

<br><br><br><br><br>

### References
- http://tldp.org/LDP/abs/html/localvar.html
- 