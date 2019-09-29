# Idempotency

- Idempotent scripts can be called multiple times and each time it’s called, it will have the same effects on the system. This means, a second call will exit with the same result and won’t have any side effects. 
- Good software is always written in an idempotent way, especially if you’re working in distributed systems, where operations might be eventually consistency and you might end up calling functions multiple times because of duplicate requests (such as in queues with At-Least-Once delivery guarantee).


[filename](../../examples/idempotency/idempotency.sh ':include :type=code bash')


<br><br><br><br><br>

### References
- https://arslan.io/2019/07/03/how-to-write-idempotent-bash-scripts/