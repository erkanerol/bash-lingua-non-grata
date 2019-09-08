# When not to use

- If you need
    - heavy-duty math operations
    - especially floating point arithmetic
    - arbitrary precision calculations
    - complex numbers 
    - native support for multi-dimensional arrays
    - data structures, such as linked lists or trees
    - generate / manipulate graphics or GUIs
    - direct access to system hardware or external peripherals
    - port or socket I/O
    - to use libraries or interface with legacy code


- Resource-intensive tasks, especially where speed is a factor (sorting, hashing, recursion )

- Complex applications, where structured programming is a necessity (type-checking of variables, function prototypes, etc.)

- Situations where security is important, where you need to guarantee the integrity of your system and protect against intrusion, cracking, and vandalism

- Project consists of subcomponents with interlocking dependencies

- Extensive file operations required (Bash is limited to serial file access, and that only in a particularly clumsy and inefficient line-by-line fashion.)




- Proprietary, closed-source applications (Shell scripts put the source code right out in the open for all the world to see.)


<br><br><br><br><br>

### References
- https://www.tldp.org/LDP/abs/html/why-shell.html