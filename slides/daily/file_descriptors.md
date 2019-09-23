# File Descriptors

[filename](../../examples/io/file_descriptors.sh ':include :type=code bash')

#### Demo
```
bash ./examples/io/file_descriptors.sh 1>/tmp/file_descriptor_stdout  2>/tmp/file_descriptor_stderr </dev/random
```

Open another shell
```
sudo su
ps aux |grep file_descriptors

lsof -p <pid>
```

Back to quiz!!!

Let!s apply the steps above for the commands below

```
sleep 100
```

```
sleep 100 2>/dev/null
```

```
sleep 100 2>&1 1>/dev/null
```

```
sleep 100 1>/dev/null 2>&1
```
<br><br><br><br><br>

### References
- 