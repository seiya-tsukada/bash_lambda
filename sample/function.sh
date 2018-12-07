function handler() {

  set -x

  EVENT_DATA=$1
  echo "$EVENT_DATA" 1>&2
  VALUE=`echo $EVENT_DATA | $LAMBDA_TASK_ROOT/jq -r .key`
  RESPONSE="get value: ${VALUE}"
 
  echo $RESPONSE
}