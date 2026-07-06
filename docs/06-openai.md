# 06. OpenAI 接続

## 設定

```yaml
activeLlm: openai
openaiLlmModel: gpt-4o
openaiApiKey: "<OPENAI_API_KEY>"
```

## Secret確認

```bash
kubectl -n cattle-ai-agent-system get secret llm-secret -o yaml
```

APIキーを貼り付けたログを外部共有しないでください。Base64は暗号化ではありません。

## キー更新

UIで保存できない場合はSecretを直接更新します。

```bash
kubectl -n cattle-ai-agent-system create secret generic llm-secret \
  --from-literal=OPENAI_API_KEY='<NEW_KEY>' \
  --from-literal=OPENAI_URL='' \
  --dry-run=client -o yaml | kubectl apply -f -
```

その後:

```bash
kubectl -n cattle-ai-agent-system rollout restart deploy/rancher-ai-agent
```
