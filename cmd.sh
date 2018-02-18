#!/usr/bin/env sh

set -e

statusCode=$(curl \
    --silent \
    --output \
    /instanceToken \
    --write-out "%{http_code}" \
    -X POST "$url")

if test "$statusCode" -ne 201; then
echo "$(cat /instanceToken)"
exit 1
fi
