# 10. UI Tools

UI Tools は AI Assistant 本体とは別フェーズで検証します。

## 方針

1. まず通常チャットを安定させる
2. MCP tools がロードされることを確認する
3. Rancher API からクラスタ情報を取得できることを確認する
4. 最後に UI Tools を導入する

## 注意

UI Tools を早い段階で導入すると、Unauthorized や OIDC 周りの問題と混ざり、切り分けが難しくなります。
