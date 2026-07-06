# 11. Troubleshooting

## Error: chart requires kubeVersion

Rancher Chart が Kubernetes の最新バージョンに未対応の場合があります。

対処:

- Rancher Desktop の Kubernetes を v1.35 系にする

## no matches for kind Issuer

cert-manager CRD が未導入です。

対処:

```bash
helm install cert-manager jetstack/cert-manager \
  --namespace cert-manager \
  --create-namespace \
  --set crds.enabled=true
```

## no space left on device

k3d / Rancher Desktop / containerd の一時領域不足。

対処:

- Rancher Desktop の Factory Reset
- k3dを避けて Rancher Desktop Kubernetes へ直接導入

## 401 Unauthorized

- UIセッション
- Liz権限
- API Key保存失敗
- Agent API への認証失敗

## SSL record layer failure

HTTP/TLSの不一致。

## 400 Bad Request

MCP Server が期待するプロトコルと AI Agent の接続方式が違う可能性。

## JWKS not initialized

OIDCClient / JWKS 未初期化。

## rancher.localhost → 127.0.0.1

ローカル検証特有の問題。`server-url` と Pod内DNSを確認。
