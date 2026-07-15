#!/bin/bash

set -a; source .env; set +a

LOGIN=$(curl -sf -H "Authorization: Bearer $GITHUB_JENKINS_TOKEN" "https://api.github.com/user" | jq -r '.login')
if [ "$LOGIN" = "$GITHUB_OWNER" ]; then
  echo "✅ GITHUB_JENKINS_TOKEN matches GITHUB_OWNER ($LOGIN)"
  curl -sf -H "Authorization: Bearer $GITHUB_JENKINS_TOKEN" "https://api.github.com/repos/$REPO" >/dev/null \
    && echo "✅ REPO '$REPO' is accessible" \
    || echo "❌ REPO '$REPO' not found or inaccessible"
else
  echo "❌ Mismatch: token belongs to '$LOGIN', not '$GITHUB_OWNER'"
fi