# Nounset option

- `set -u` or `set -o nounset`
- By default, unset variables are just evaluated as if they were the empty string.
- With this option, BASH stops and fail if you try to use an unset variable.

#### Without Nounset

[filename](../../examples/options/options_without_nounset.sh ':include :type=code bash')

```
bash ./examples/options/options_without_nounset.sh
```


#### With Nounset
[filename](../../examples/options/options_with_nounset.sh ':include :type=code bash')

```
bash ./examples/options/options_with_nounset.sh
```


<br><br><br>

#### DON'T TRY AT HOME
`rm -rf "$DIRECTORY/*"`

<br><br><br><br><br>

### References
- https://www.tldp.org/LDP/abs/html/options.html
- https://www.gnu.org/software/bash/manual/html_node/The-Set-Builtin.html
- https://jvns.ca/blog/2017/03/26/bash-quirks/