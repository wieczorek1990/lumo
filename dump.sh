#!/usr/bin/env fish
# Dumper.

find $argv -type f \
    -not -path '*/.idea/*' \
    -not -path '*/.ruff_cache/*' \
    -not -path '*/static/*' \
    -not -path '*/.git/*' \
    -not -path '*/activate/*' \
    -not -path '*__pycache__*' \
    -not -name '*.sqlite3' \
    -print0 | xargs -0 cat | pbcopy
