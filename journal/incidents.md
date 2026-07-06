# Incident Notes

## 127.0.0.1問題

`rancher.localhost` がPod内で `127.0.0.1` に解決され、Rancher APIへ接続できなかった。

## JWKS not initialized

MCP ServerがOIDC/JWKSを初期化できていなかった。

## SSL record layer failure

MCP ServerのTLS状態とAI Agentからの接続方式が不一致だった。
