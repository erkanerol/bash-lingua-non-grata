# Preferred Shebang for Bash

- In some situations, the first may be preferred (like running python scripts with multiple versions of python, without having to rework the executable line). 
- But in situations where security is the focus, the latter would be preferred, as it limits code injection possibilities.

```bash
#!/usr/bin/env bash
```

```bash
#!/bin/bash
```

```bash
#!/bin/sh
```

<br><br><br>

### Quiz 1


[filename](../../examples/shebang/interpreter_printer.sh ':include :type=code bash')

```bash
./examples/shebang/interpreter_printer.sh
```

```bash
bash examples/shebang/interpreter_printer.sh
```

```bash
sh examples/shebang/interpreter_printer.sh
```

<br><br><br>

### Quiz 2

[filename](../../examples/shebang/missing_shebang.sh ':include :type=code bash')

Answer: Complex Behaviour. Use Shebang!


<br><br><br><br><br>

### References

- https://stackoverflow.com/questions/16365130/what-is-the-difference-between-usr-bin-env-bash-and-usr-bin-bash/16365367#16365367
- https://unix.stackexchange.com/questions/373223/which-shell-interpreter-runs-a-script-with-no-shebang
