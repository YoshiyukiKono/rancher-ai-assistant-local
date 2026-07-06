#!/usr/bin/env bash
set -euo pipefail
kubectl get nodes
kubectl -n cattle-system get pods
kubectl -n cattle-ai-agent-system get pods || true
kubectl get settings.management.cattle.io server-url -o jsonpath='{.value}{"\n"}' || true
