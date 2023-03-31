#!/usr/bin/env bash

set -euo pipefail

if [[ -n "$INPUT_OUTPUT_PATH" ]]; then
  rm -rf "$INPUT_OUTPUT_PATH"
fi
