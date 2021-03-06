#!/bin/bash

if [ "$TRAVIS_PULL_REQUEST" != "false" ] ; then
   # hey that's a pull request
   curl -H "Authorization: token ${GITHUB_TOKEN}" -X POST \
        -d "{\"body\": \"Hello world\"}" \
        "https://api.github.com/repos/${TRAVIS_REPO_SLUG}/issues/${TRAVIS_PULL_REQUEST}/comments"
else
   echo "Not a PR"
fi
