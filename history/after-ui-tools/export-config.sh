#!/bin/bash
set -euo pipefail

BASE_DIR="$(cd "$(dirname "$0")" && pwd)"
CONFIG_DIR="$BASE_DIR/config"

mkdir -p "$CONFIG_DIR"

kubectl get settings.management.cattle.io -o yaml \
  > "$CONFIG_DIR/settings.yaml"

kubectl get aiagentconfigs -A -o yaml \
  > "$CONFIG_DIR/aiagentconfigs.yaml"

kubectl -n cattle-ai-agent-system get configmap llm-config -o yaml \
  > "$CONFIG_DIR/llm-config.yaml"

kubectl get all -A -o yaml \
  > "$CONFIG_DIR/all.yaml"

helm list -A \
  > "$CONFIG_DIR/helm-list.txt"

kubectl -n cattle-ai-agent-system get configmap rancher-ai-ui -o yaml \
  > config/rancher-ai-ui.yaml
