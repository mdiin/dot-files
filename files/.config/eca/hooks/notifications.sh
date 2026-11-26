#!/bin/sh

input=$(cat)

printf '%s' "$input" | jq -e '.approval == "ask"' > /dev/null || exit 0

eca_executable=$(printf '%s' "$input" | jq -r '.eca_executable')
db_cache_path=$(printf '%s' "$input" | jq -r '.db_cache_path')
chat_id=$(printf '%s' "$input" | jq -r '.chat_id')

# $eca_executable is unquoted on purpose: for JVM launches it is a full command line.
title=$($eca_executable read-chat --db-cache-path "$db_cache_path" 2> /dev/null |
  jq -r --arg id "$chat_id" 'select(.id == $id) | .title // empty')

notify-send -a "ECA" "${title:-ECA}" "Approval is needed"
