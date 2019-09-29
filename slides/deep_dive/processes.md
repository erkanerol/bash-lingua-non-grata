# RECAP: Sub-shell vs Sub-processes vs  Builtins

#### Builtin commands

- There are some `builtin` commands. For these, BASH doesn't create another process. 
- `type` command can be used to check whether a command is shell keyword, shell builtin or an external binary

```
man builtin
```

```
type cd
```

```
type awk
```

```
type case
```

#### Sub-processes / Child-processes

- A sub-process is created by the parent shell by making the system calls `fork` followed by `exec`
- A sub-process executes independently of the parent process.
- A child-process gets a copy of all of the environment variables of the parent shell. 
- Environment variables are those variables that are declared with the export keyword. 

#### Subshell

- A sub-shell is a sub-process that is an almost identical copy of the parent shell.
- They get a copy of not just the environment variables but also the non-exported shell variables, functions etc
- Each command in a pipeline is also executed in a sub-shell.

```
pwd
cd '/' |pwd
```
<br><br><br><br><br>

### References
- https://jitpaul.blog/2018/09/16/shell-scripting-sub-shell-vs-sub-process/