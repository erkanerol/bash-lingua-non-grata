# Consumability by BASH

- When writing a software which will be called by a BASH script
  - Use different error codes for different cases. Don't expect output parsing.
  - Provide flags for idempotency
    - Example: `kubectl delete pod --ignore-not-found` -> No need to check its existence beforehand. Ignoring all errors is dangerous and the user should be able to ignore this specific case.
  - Print your identity in error messages
    - Example: `ls /non/existing/dir` -> It prints "ls:" at the beginning


<br><br><br><br><br>

### References
- 