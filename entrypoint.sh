#!/usr/bin/env bash

set -euo pipefail

sed 's@REPOSITORY_URL@'"$INPUT_REPOSITORY_URL"'@g' cliff-template.toml > cliff.toml
