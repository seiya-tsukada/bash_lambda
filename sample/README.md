# bash_lambda

jq install
```
curl -o ./jq -L https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64
```

```
chmod 755 bootstrap  function.sh jq
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
--payload '{"key": "value"}' \
--region ap-northeast-1 \
output.txt
```