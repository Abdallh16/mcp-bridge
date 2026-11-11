#!/usr/bin/env bash
set -euo pipefail

if [[ -z "${WEB_PASSWORD:-}" ]]; then
  echo "ERROR: Set WEB_PASSWORD in Render Environment before starting."
  exit 1
fi

export PATH="/root/.local/bin:$PATH"
mkdir -p /workspace
cd /workspace

PORT="${PORT:-10000}"
exec ttyd -p "$PORT" -c "agy:${WEB_PASSWORD}" -W bash -l
