# Sourcing

- `. myscript` -> POSIX compliant
- `source myscript` -> Bash defined source as an alias to the dot


#### Example 1

[filename](../../examples/sourcing/virtuous_lib.sh ':include :type=code bash')

[filename](../../examples/sourcing/virtuous_lib_sourcer.sh ':include :type=code bash')

[filename](../../examples/sourcing/virtuous_lib_runner.sh ':include :type=code bash')

#### Demo 1

```
bash ./examples/sourcing/virtuous_lib_sourcer.sh
```

```
bash ./examples/sourcing/virtuous_lib_runner.sh
```


<br><br><br>

#### Example 2

[filename](../../examples/sourcing/bad_lib.sh ':include :type=code bash')

[filename](../../examples/sourcing/bad_lib_sourcer.sh ':include :type=code bash')

[filename](../../examples/sourcing/bad_lib_runner.sh ':include :type=code bash')

#### Demo 2

```
bash ./examples/sourcing/bad_lib_sourcer.sh
```

```
bash ./examples/sourcing/bad_lib_runner.sh
```

<br><br><br><br><br>

### References
- https://superuser.com/questions/176783/what-is-the-difference-between-executing-a-bash-script-vs-sourcing-it