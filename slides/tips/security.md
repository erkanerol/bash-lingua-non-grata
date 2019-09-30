# Security

- Don't put secret data in environment variables.
- Don't pass secret data in an external command's arguments (pass them in via a pipe or redirection instead).

```
docker login --username foo --password my_password
# better
cat ~/my_password.txt | docker login --username foo --password-stdin
```
- Validate all external input and never `eval` input

[filename](../../examples/security/dont_use_eval.sh ':include :type=code bash')

```
bash ./examples/security/dont_use_eval.sh func2
```

- Set your `$PATH` carefully. Don't just trust whatever path you inherit from the caller if your script is running as `root`

<br><br><br><br><br>

### References
- https://www.tldp.org/LDP/abs/html/securityissues.html#SECURITYTIPS
- https://books.google.com.tr/books?id=Qu6H8fnAvGoC&lpg=PA282&ots=CjjXakqL6Z&dq=bash%20eval%20security&hl=tr&pg=PA282#v=onepage&q=bash%20eval%20security&f=false