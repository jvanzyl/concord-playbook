#!/bin/bash

rm -rf target && mkdir target
cp -R concord.yml playbook.yml inventory.ini concord.pem roles target/

cd target && zip -r payload.zip ./* > /dev/null && cd ..

curl -i -H 'Authorization: auBy4eDWrKWsyhiDp3AQiw' -F archive=@target/payload.zip http://localhost:8001/api/v1/process

rm -rf target