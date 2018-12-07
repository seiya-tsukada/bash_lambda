# bash_lambda

```
chmod 755 bootstrap  function.sh
```

```
zip -r /tmp/output.zip ./*
```

```
aws lambda \
update-function-code \
--function-name [function_name] \
--zip-file fileb:///tmp/output.zip \
--publish \
--region ap-northeast-1
```

```
aws lambda invoke --invocation-type Event \
--function-name [finction_name] \
--payload '{"key1": "value1"}' \
--region ap-northeast-1 \
output.txt
```