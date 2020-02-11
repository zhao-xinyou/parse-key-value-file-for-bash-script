# parse-key-value-file-for-bash-script

Parsing key-value variables from config file in Bash.
It may trim spaces on key or value.

### Example

```
db_host=DB_HOST
db_name=DB_NAME
db_user=DB_USER
db_password = DB_PASSWORD 
```

### You may use key variables in your bash script

```
echo $db_host
echo $db_name
echo $db_user
echo $db_password
...
```

### Output

```
DB_HOST
DB_NAME
DB_USER
DB_PASSWORD
```
