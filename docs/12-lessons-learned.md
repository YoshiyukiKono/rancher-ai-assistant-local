# 12. Lessons Learned

## 1. Rancher Desktopは便利だが、localhost系URLに注意

ブラウザとPodでは名前解決の世界が違います。

## 2. AI Assistant本体とUI Toolsは分けて考える

チャットが動くことと、UI Toolsが動くことは別問題です。

## 3. MCP Serverは単なるサイドカーではない

Rancher APIとの橋渡しをする重要なコンポーネントです。

## 4. Base64は秘密ではない

Secretを外部へ貼った場合は、APIキーをローテーションします。

## 5. ログを読む順序が大事

1. Pod状態
2. Agentログ
3. MCPログ
4. Rancher API到達性
5. OIDC/JWKS
6. OpenAI API
