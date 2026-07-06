# 09. server-url と rancher.localhost 問題

## 問題

`rancher.localhost` はブラウザでは便利ですが、Pod内では `127.0.0.1` に解決される場合があります。

エラー例:

```text
dial tcp 127.0.0.1:443: connect: connection refused
```

## server-url確認

```bash
kubectl get settings.management.cattle.io server-url -o jsonpath='{.value}{"\n"}'
```

## Pod内向けURL

```bash
kubectl patch settings.management.cattle.io server-url \
  --type=merge \
  -p '{"value":"https://rancher.cattle-system.svc"}'
```

## hostAliases

必要に応じて、AI Agent / MCP Server に hostAliases を追加します。

```bash
kubectl -n cattle-system get svc rancher
```

取得した ClusterIP を使います。

```yaml
hostAliases:
- ip: "10.43.230.231"
  hostnames:
  - "rancher.localhost"
```

ただし、`.localhost` は特別扱いされる場合があるため、根本解決は `rancher.localhost` を避けることです。
