#!/bin/bash
cd "$(dirname "$0")"

rm -rf OpenAPIClient
java -jar /Users/frank/NonSync/Git/openapi-generator/modules/openapi-generator-cli/target/openapi-generator-cli.jar generate \
-i openapi.yml \
-g swift5 -c config-swift5.json \
-o OpenAPIClient/

pod install --no-repo-update
