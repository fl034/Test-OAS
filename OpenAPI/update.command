#!/bin/bash
cd "$(dirname "$0")"

rm -rf OpenAPIClient
openapi-generator generate \
-i openapi.yml \
-g swift5 -c config-swift5.json \
-o OpenAPIClient/

pod install --no-repo-update
