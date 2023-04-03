#!/usr/bin/env bash

set -euo pipefail

OUTPUT_PATH="cliff.toml"
TEMPLATE_CONFIG=$INPUT_TEMPLATE_CONFIG

if [[ ! -f "$OUTPUT_PATH" ]]; then
  if [[ "$TEMPLATE_CONFIG" == "http"* ]] || [[ "$TEMPLATE_CONFIG" == "https"* ]]; then
    curl -sSL "$TEMPLATE_CONFIG" | sed 's@REPOSITORY_URL@'"$INPUT_REPOSITORY_URL"'@g' > "$OUTPUT_PATH"
  else
    sed 's@REPOSITORY_URL@'"$INPUT_REPOSITORY_URL"'@g' "$TEMPLATE_CONFIG" > "$OUTPUT_PATH"
  fi
  
  echo "output_path=$OUTPUT_PATH" >> "$GITHUB_OUTPUT"
fi
