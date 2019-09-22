# Square Brackets: Single vs Double

- `[` is a program
- `[[` is bash syntax. `[[` is better.
- Using the `[[...]]`  rather than `[...]` can prevent many logic errors in scripts. For example, the `&&`, `||`, `<`, and `>` operators work within a `[...]` test, despite giving an error within a `[...]` construct.


[filename](../../examples/operators/single_brackets.sh ':include :type=code bash')

[filename](../../examples/operators/double_brackets.sh ':include :type=code bash')


#### Demo
```
which '['
```

```
which '[['
echo $?
```

```
bash ./examples/operators/single_brackets.sh 1 2 3
```

```
bash ./examples/operators/double_brackets.sh 1 2 3
```

<br><br><br><br><br>

### References
- https://jvns.ca/blog/2017/03/26/bash-quirks/