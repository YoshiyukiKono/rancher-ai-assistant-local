# 07. MCP Server

MCP Server は Rancher API を AI Agent から利用するためのブリッジです。

## 役割

- Rancher API へのアクセス
- Kubernetes / Fleet / Provisioning 系ツールの提供
- Tool call の実行

## よく見るログ

```text
Loaded 3 enabled agent configs
Filtered 4 tools for toolset 'fleet'
Filtered 13 tools for toolset 'provisioning'
Filtered 16 tools for toolset 'rancher'
```

これは MCP tools のロードが成功していることを示します。

## HTTP/TLS

ローカル検証では、AI Agent が MCP Server の `http://rancher-mcp-server...` にアクセスする場合があります。

このとき MCP Server が TLS モードだと、以下のようなエラーになります。

```text
SSL record layer failure
400 Bad Request
```

`insecureSkipTls: true` を Helm values に入れて、正規の再デプロイで揃えるのが安全です。
