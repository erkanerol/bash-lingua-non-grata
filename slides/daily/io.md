# IO Streams

- There are always three default streams: stdin, stdout and stderr
- Each stream has its own file descriptor
  - stdin = standard input = 0
  - stdout = standard output = 1
  - stderr = standard error = 2
- Processes inherit them from their parents by default. Redirection can be done.

[filename](../../examples/io/example.py ':include :type=code python')

#### Demo
```
python3 ./examples/io/example.py
```

```
cat ./examples/io/example_input
```

```
python3 ./examples/io/example.py 1>/tmp/io_redirection_stdout 2>/tmp/io_redirection_stderr 0<./examples/io/example_input
```

```
python3 ./examples/io/example_with_sleep.py 1>/tmp/io_redirection_stdout 2>/tmp/io_redirection_stderr 0<./examples/io/example_input
```

Open another shell
```
ps aux |grep example_with_sleep

lsof -p <pid>
```

<br><br><br><br><br>

### References
- 