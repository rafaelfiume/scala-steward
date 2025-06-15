#!/usr/bin/env bash

LOGIN="rafaelfiume"
EMAIL="rafael.fiume@yahoo.it"
STEWARD_DIR="$HOME/workspace/scala-steward/"

sbt stage

./modules/core/.jvm/target/universal/stage/bin/scala-steward \
  --workspace  "$STEWARD_DIR/workspace" \
  --repos-file "$STEWARD_DIR/repos.md" \
  --repo-config "$STEWARD_DIR/.scala-steward.conf" \
  --git-author-email ${EMAIL} \
  --forge-api-host "https://api.github.com" \
  --forge-login ${LOGIN} \
  --git-ask-pass "$HOME/.github/tokens/git-ask-pass.sh" \
  --do-not-fork
