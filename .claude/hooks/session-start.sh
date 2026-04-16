#!/bin/bash
set -euo pipefail

# Read hook input from stdin
INPUT=$(cat)
SOURCE=$(echo "$INPUT" | python3 -c "import sys,json; print(json.loads(sys.stdin.read()).get('source','startup'))" 2>/dev/null || echo "startup")

# Only run on fresh session start, not resume/compact/clear
if [ "$SOURCE" != "startup" ]; then
  exit 0
fi

# Only run once per 12 hours to avoid multiple runs if Claude Code is restarted
TIMESTAMP_FILE="/tmp/email-recap-last-run"
if [ -f "$TIMESTAMP_FILE" ]; then
  LAST_RUN=$(cat "$TIMESTAMP_FILE")
  NOW=$(date +%s)
  DIFF=$((NOW - LAST_RUN))
  if [ "$DIFF" -lt 43200 ]; then
    exit 0
  fi
fi

# Run asynchronously so session starts without waiting
echo '{"async": true, "asyncTimeout": 90000}'

# Save timestamp to avoid double-runs
date +%s > "$TIMESTAMP_FILE"

# Generate the daily Gmail recap
LOG_FILE="$CLAUDE_PROJECT_DIR/email-recap.log"
echo "=== Récapitulatif lancé le $(date) ===" >> "$LOG_FILE"
cd "$CLAUDE_PROJECT_DIR"
/opt/node22/bin/claude --print "/email-recap" >> "$LOG_FILE" 2>&1
echo "=== Terminé le $(date) ===" >> "$LOG_FILE"
