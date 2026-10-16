#!/bin/bash
# Redeploy the play-caller. Pages serves from main, so a push IS the deploy.
set -e
cd "$(dirname "$0")"

# 1. verify before shipping
node "$HOME/.hermes/cache/scratch/oc-test2.js" 2>&1 \
  | grep -v "Not implemented" | grep -E "FAIL|===|renders:|js errors"
grep -q "=== ALL PASSED ===" <(node "$HOME/.hermes/cache/scratch/oc-test2.js" 2>&1) || {
  echo "TESTS FAILED - not deploying"; exit 1; }

# 2. ship
git add index.html README.md
git commit -q -m "${1:-update plays}" || echo "(nothing to commit)"
git push -q origin main
echo "deployed: https://ar33s08.github.io/oc-bfterv/"