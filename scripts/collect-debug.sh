#!/bin/bash
kubectl -n cattle-ai-agent-system logs deploy/rancher-ai-agent
kubectl -n cattle-ai-agent-system logs deploy/rancher-mcp-server
