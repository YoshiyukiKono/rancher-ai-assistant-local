# 08. OIDC / JWKS

## OIDCClient

Rancher AI Assistant / MCP では認証のために OIDCClient が関係します。

確認:

```bash
kubectl get crd | grep -i oidc
kubectl get oidcclients -A
```

## JWKS

エラー例:

```text
JWKS not initialized
No OIDCClients configured
```

これは OIDCClient が未作成、または MCP Server が JWKS URL を解決できていない可能性があります。

## 確認コマンド

```bash
kubectl run tmp-jwks \
  --rm -it \
  --image=curlimages/curl \
  --restart=Never \
  -- sh
```

Pod内で:

```sh
curl -k -s https://rancher.cattle-system.svc/oidc/.well-known/openid-configuration
```
