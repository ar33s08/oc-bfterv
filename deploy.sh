#!/bin/bash
# Redeploy the play-caller. Pages serves from main, so a push IS the deploy.
set -e
cd "$(dirname "$0")"

# 1. verify before shipping
OUT=$(mktemp)
node "$HOME/.hermes/cache/scratch/oc-test2.js" > "$OUT" 2>&1 || true
grep -E "^FAIL|^RENDERS=|^JAVASCRIPT" "$OUT"
if ! grep -q "=== ALL PASSED ===" "$OUT"; then
  echo "TESTS FAILED - not deploying. full output: $OUT"; exit 1; fi
grep -q "JAVASCRIPT ERRORS: none" "$OUT" || { echo "JS ERRORS - not deploying"; exit 1; }
rm -f "$OUT"

# 2. ship
# tinyurl.com/flagoc was created with an unencoded target, so it redirects to
# ".../oc-bfterv/&alias=flagoc". Serve that literal path so the pretty alias works.
mkdir -p '&alias=flagoc'
cp -f index.html '&alias=flagoc/index.html'
git add -A
git commit -q -m "${1:-update plays}" || echo "(nothing to commit)"
git push -q origin main
echo "deployed -> https://tinyurl.com/flagoc"