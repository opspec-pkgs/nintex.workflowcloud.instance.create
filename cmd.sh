#!/usr/bin/env sh

set -e

touch /instanceToken

statusCode=$(curl \
    --silent \
    --output \
    /instanceToken \
    --write-out "%{http_code}" \
    -X POST "${baseUrl}/api/v1/workflow/published/${workflowId}/instances/create?token=${workflowToken}")

if test "$statusCode" -ne 201; then
echo "$(cat /instanceToken)"
exit 1
fi
echo "instanceToken=$(cat /instanceToken)"