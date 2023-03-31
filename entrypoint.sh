#!/usr/bin/env bash

set -euo pipefail

TMP_DIR=$(mktemp -d)
OUTPUT_PATH="$TMP_DIR/cliff.toml"

sed 's@REPOSITORY_URL@'"$INPUT_REPOSITORY_URL"'@g' cliff-template.toml > "$OUTPUT_PATH"

echo "output_path=$OUTPUT_PATH" >> "$GITHUB_OUTPUT"
