#!/bin/sh -l


echo "Requesting registration token for $REPOSITORY"


REG_TOKEN=$(curl -L \
  -X POST \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $TOKEN" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/$REPOSITORY/actions/runners/registration-token | jq -r .token)

echo "registration-token=$REG_TOKEN" >> $GITHUB_OUTPUT
