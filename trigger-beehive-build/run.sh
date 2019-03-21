#!/usr/bin/env sh

trigger_beehive_build() {
    body="{
    \"repo\":\"hackgt/${REPO_NAME}\"
     }"

    curl -s -X POST \
         -H "Content-Type: application/json" \
         -H "Accept: application/json" \
         -H "Authorization: ${TRAVIS_TOKEN}" \
         -d "$body" \
         https://beekeeper.hack.gt/api/version_updates
}
trigger_beehive_build