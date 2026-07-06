#!/bin/bash
kubectl -n cattle-ai-agent-system rollout restart deploy/rancher-ai-agent
kubectl -n cattle-ai-agent-system rollout restart deploy/rancher-mcp-server
