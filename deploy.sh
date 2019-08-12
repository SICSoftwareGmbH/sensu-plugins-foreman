#!/bin/bash -e

curl -s -H "Authorization: token ${GITHUB_TOKEN}" --data "{\"tag_name\": \"${TRAVIS_TAG}\"}" -X POST "https://api.github.com/repos/${TRAVIS_REPO_SLUG}/releases"

./bonsai/ruby-runtime/travis-build-ruby-plugin-assets.sh sensu-plugins-foreman
