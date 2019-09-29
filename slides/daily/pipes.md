# Pipes

- The output of each command in the pipeline is connected via a pipe to the input of the next command. That is, each command reads the previous command’s output. 

- `command1 | command2 | command3`

[filename](../../examples/pipes/pipes.sh ':include :type=code bash')

#### Demo
```
bash ./examples/pipes/pipes.sh 1
```

<br><br><br><br><br>

### References
- https://www.gnu.org/software/bash/manual/html_node/Pipelines.html