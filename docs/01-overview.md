# 01. 概要

Rancher AI Assistant は、Rancher UI 上で利用できるAI支援機能です。

ローカル検証で重要なのは、単にUIからチャットできることではありません。背後では以下のコンポーネントが協調しています。

```text
AI Assistant Extension
  ↓
rancher-ai-agent
  ↓
rancher-mcp-server
  ↓
Rancher API
```

このリポジトリでは、各コンポーネントを独立して確認しながら、どこで何が壊れるかを観察します。

## 学習ゴール

- Rancher Prime のローカル起動
- AI Assistant Extension の導入
- OpenAI API 接続
- MCP Server の役割理解
- OIDC / JWKS の理解
- `server-url` の重要性理解
- UI Tools を安全に検証するための準備
