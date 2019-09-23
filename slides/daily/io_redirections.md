# IO Redirections

[filename](../../examples/io/all_redirections.sh ':include :type=code bash')

#### Quiz

```
ls /usr/bin/envvvv 2>/tmp/ls_stderr 1>/tmp/ls_stdout
cat /tmp/ls_stderr
cat /tmp/ls_stdout
```

What is the output of these commands?
```
ls /usr/bin/envvvv 2>&1 1>/dev/null
```

```
ls /usr/bin/envvvv 1>/dev/null 2>&1
```

<br><br><br><br><br>

### References
- https://www.tldp.org/LDP/abs/html/io-redirection.html
- https://github.com/koalaman/shellcheck/wiki/SC2069