#!/usr/bin/env bash
set -euo pipefail
IP=$(kubectl -n cattle-system get svc rancher -o jsonpath='{.spec.clusterIP}')
kubectl -n cattle-ai-agent-system patch deployment rancher-ai-agent \
  --type='json' \
  -p="[{\"op\":\"add\",\"path\":\"/spec/template/spec/hostAliases\",\"value\":[{\"ip\":\"$IP\",\"hostnames\":[\"rancher.localhost\"]}]}]"
