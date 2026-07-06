# Rancher AI Assistant Local Lab

Rancher Prime + Rancher AI Assistant + MCP Server をローカル環境で構築し、内部構造まで理解するための学習・検証リポジトリです。

## このリポジトリの位置づけ

これは単なるインストールメモではありません。

- Rancher AI Assistant をローカルで動かす
- AI Agent / MCP Server / Rancher API の関係を理解する
- OpenAI 接続を安全に扱う
- OIDC / JWKS / server-url / TLS のトラブルを切り分ける
- 将来的に UI Tools や Custom Agent 開発へ進む

ことを目的にした **Hands-on Book Repository** です。

## 対象読者

- Rancher / RKE2 / K3s を学びたい人
- SUSE Rancher Prime の AI Assistant を検証したい人
- Kubernetes 上の AI Agent / MCP の構成を理解したい人
- ローカル環境で製品機能を再現しながら学びたい人

## 推奨環境

- macOS
- Rancher Desktop
- Kubernetes v1.35 系
- Rancher Prime v2.14.x
- Rancher AI Agent v1.0.x
- OpenAI API Key

## 構成

```text
Browser
  ↓
Rancher UI
  ↓
AI Assistant Extension
  ↓
rancher-ai-agent
  ↓
rancher-mcp-server
  ↓
Rancher Management API
  ↓
Kubernetes Cluster
```

## 章構成

- `docs/01-overview.md`
- `docs/02-architecture.md`
- `docs/03-install-rancher-prime.md`
- `docs/04-registration.md`
- `docs/05-install-ai-assistant.md`
- `docs/06-openai.md`
- `docs/07-mcp-server.md`
- `docs/08-oidc-jwks.md`
- `docs/09-server-url.md`
- `docs/10-ui-tools.md`
- `docs/11-troubleshooting.md`
- `docs/12-lessons-learned.md`
- `docs/13-roadmap.md`

## 注意

APIキーやREGCODEをGitへコミットしないでください。
