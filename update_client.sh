#!/bin/sh

yousign_url=https://developers.yousign.com/openapi/60c6f824bd87e600229f054b
openapi_path=yousign_openapi.json

echo "[INFO] Generate client"
swagger-codegen generate -i $openapi_path -l ruby -o . -c config.json
