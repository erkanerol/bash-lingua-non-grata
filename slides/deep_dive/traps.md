# Traps

- Trap is a bash builtin command that is used to respond to process signals.
- a simple, useful idiom to make your bash scripts more robust - ensuring they always perform necessary cleanup operations, even when something unexpected goes wrong.

#### Example with SIGINT

[filename](../../examples/trap/exit_trap.sh ':include :type=code bash')

```
bash ./examples/trap/exit_trap.sh
```

#### Cleanup Example

- `EXIT` is a pseudo-signal provided by BASH
- execute when the script exits for any reason

[filename](../../examples/trap/cleanup.sh ':include :type=code bash')

```
bash ./examples/trap/cleanup.sh
```

- Note that if you send a kill -9 to your script, it will not execute the EXIT trap before exiting.

- There are others bash signals like `RETURN`, `DEBUG` or `ERR`
<br><br><br><br><br>

### References
- https://www.putorius.net/using-trap-to-exit-bash-scripts-cleanly.html
- http://redsymbol.net/articles/bash-exit-traps/
- https://www.linuxjournal.com/content/bash-trap-command