#!/bin/bash

set -euo pipefail
set env ACTIONS_ALLOW_UNSECURE_COMMANDS: true
SCHEME="$(xcodebuild -list -json | jq -r '.project.schemes[0]')"
PRODUCT_NAME="$(xcodebuild -scheme "$SCHEME" -showBuildSettings | grep " PRODUCT_NAME " | sed "s/[ ]*PRODUCT_NAME = //")"
echo "::set-env name=PRODUCT_NAME::$PRODUCT_NAME"
