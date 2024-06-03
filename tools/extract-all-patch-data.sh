#!/bin/bash

set -euo pipefail

SCRIPT_FOLDER="$(realpath "$(dirname "$0")")"
SCRIPT="$SCRIPT_FOLDER/extract-patch-data.sh"

OUTPUT="$SCRIPT_FOLDER/../docs/PATCHES.md"
rm -f "$OUTPUT"

pushd "$1" >/dev/null

for filename in *.patch; do
    (echo "Filename: $filename"; cat "$filename") | bash "$SCRIPT"
done | sort -k1 -t"|" -o "$OUTPUT"

sed -i '1s/^/| Patch | Message |\n/' "$OUTPUT"
sed -i '2s/^/|--------|--------|\n/' "$OUTPUT"
