#!/usr/bin/env bash
set -euo pipefail
mkdir -p debug
kubectl get pods -A > debug/pods.txt
kubectl -n cattle-ai-agent-system logs deploy/rancher-ai-agent --tail=300 > debug/rancher-ai-agent.log || true
kubectl -n cattle-ai-agent-system logs deploy/rancher-mcp-server --tail=300 > debug/rancher-mcp-server.log || true
kubectl get settings.management.cattle.io server-url -o yaml > debug/server-url.yaml || true
