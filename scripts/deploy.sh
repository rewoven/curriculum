#!/usr/bin/env bash
# Push the local curriculum code to the VPS, rebuild, restart.
set -euo pipefail

VPS=root@185.197.250.205
APP=/opt/rewoven_curriculum

echo "→ rsync source"
rsync -az --delete \
  --exclude=_build --exclude=deps --exclude=node_modules \
  --exclude=.git --exclude='.env*' --exclude=priv/static/assets \
  ./ "$VPS:$APP/"

echo "→ build on the VPS"
ssh "$VPS" bash -lc "'
  set -e
  cd $APP
  export PATH=/root/.local/share/mise/installs/elixir/1.17.3-otp-27/bin:/root/.local/share/mise/installs/erlang/27.3.4.10/bin:\$PATH
  export MIX_HOME=/root/.local/share/mise/installs/elixir/1.17.3-otp-27/.mix
  MIX_ENV=prod mix deps.get --only prod >/dev/null
  MIX_ENV=prod mix compile 2>&1 | tail -3
  rm -f priv/static/curriculum-*.css priv/static/cache_manifest.json
  MIX_ENV=prod mix phx.digest 2>&1 | tail -3
'"

echo "→ restart service"
ssh "$VPS" 'systemctl restart rewoven-curriculum && systemctl is-active rewoven-curriculum'

echo "→ smoke test"
sleep 2
ssh "$VPS" "curl -s -o /dev/null -w 'HTTP %{http_code}\n' http://127.0.0.1:4003/"

echo "✓ deploy complete"
