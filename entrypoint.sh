#!/usr/bin/env bash

set -euo pipefail

OUTPUT_PATH="cliff.toml"

sed 's@REPOSITORY_URL@'"$INPUT_REPOSITORY_URL"'@g' cliff-template.toml > "$OUTPUT_PATH"

echo "output_path=$OUTPUT_PATH" >> "$GITHUB_OUTPUT"
