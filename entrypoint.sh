#!/usr/bin/env bash

set -euo pipefail

OUTPUT_PATH="cliff.toml"

if [[ ! -f "$OUTPUT_PATH" ]]; then
  sed 's@REPOSITORY_URL@'"$INPUT_REPOSITORY_URL"'@g' cliff-template.toml > "$OUTPUT_PATH"
  
  echo "output_path=$OUTPUT_PATH" >> "$GITHUB_OUTPUT"
fi
