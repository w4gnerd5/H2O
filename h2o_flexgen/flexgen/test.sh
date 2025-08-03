#!/usr/bin/env bash
# run_many.sh — run a command a specified number of times, sequentially
#
# Usage: ./run_many.sh <count> <command> [args …]
# Example: ./run_many.sh 5 echo "hello, world"

set -euo pipefail

if [[ $# -lt 2 ]]; then
  printf 'Usage: %s <count> <command> [args…]\n' "$0" >&2
  exit 64 # EX_USAGE
fi

count="$1"; shift
[[ "$count" =~ ^[0-9]+$ && "$count" -gt 0 ]] || {
  printf 'Count must be a positive integer\n' >&2
  exit 65 # EX_DATAERR
}

for (( i = 1; i <= count; i++ )); do
  printf '(%d/%d) %q\n' "$i" "$count" "$*"
  "$@"
done