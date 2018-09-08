#!/usr/bin/env bash

trigger_beehive_build() {
    body='{
    "request": {
    "branch":"master"
    } }'

    curl -s -X POST \
         -H "Content-Type: application/json" \
         -H "Accept: application/json" \
         -H "Travis-API-Version: 3" \
         -H "Authorization: token ${TRAVIS_TOKEN}" \
         -d "$body" \
         https://api.travis-ci.org/repo/HackGT%2fbiodomes/requests
}
trigger_beehive_build