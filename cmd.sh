#!/usr/bin/env sh

set -e

url="${baseUrl}/api/v1/workflow/published/${workflowId}/instances/create?token=${workflowToken}"

touch /instanceId

statusCode=$(curl --silent --output /instanceId --write-out "%{http_code}" -X POST "$url")

if test "$statusCode" -ne 201; then
echo "$(cat /instanceId)"
exit 1
fi
echo "instanceId=$(cat /instanceId)"