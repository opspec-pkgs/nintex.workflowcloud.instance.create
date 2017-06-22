#!/usr/bin/env sh

set -e

url="${baseUrl}/api/v1/workflow/published/${workflowId}/instances/create?token=${workflowToken}"

touch /instanceToken

statusCode=$(curl --silent --output /instanceToken --write-out "%{http_code}" -X POST "$url")

if test "$statusCode" -ne 201; then
echo "$(cat /instanceToken)"
exit 1
fi
echo "instanceToken=$(cat /instanceToken)"