# 05. AI Assistant の導入

AI Assistant は大きく2つに分かれます。

1. Rancher UI Extension
2. rancher-ai-agent / rancher-mcp-server

## UI Extension

Rancher UI の Extensions から AI Assistant をインストールします。

## AI Agent

```yaml
activeLlm: openai
openaiLlmModel: gpt-4o
openaiApiKey: "<OPENAI_API_KEY>"
insecureSkipTls: true
log:
  level: debug
```

```bash
helm upgrade --install rancher-ai-agent \
  --namespace cattle-ai-agent-system \
  --create-namespace \
  -f values.yaml \
  oci://registry.suse.com/rancher/charts/rancher-ai-agent
```

## 確認

```bash
kubectl -n cattle-ai-agent-system get pods
```

期待値:

```text
rancher-ai-agent      1/1 Running
rancher-mcp-server    1/1 Running
```
