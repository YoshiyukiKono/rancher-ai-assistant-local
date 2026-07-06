#!/usr/bin/env bash
set -euo pipefail
kubectl patch settings.management.cattle.io server-url \
  --type=merge \
  -p '{"value":"https://rancher.localhost"}'
