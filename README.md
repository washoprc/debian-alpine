# 開発環境 Docker設定

このリポジトリには、Git、Vim、Zshが設定された開発環境のDockerコンテナ設定が含まれています。  
気軽にこれらのツールを利用してテストする目的で作成しました。  
DebianベースとAlpineベースの2つの環境から選択できます。  

## 特徴

- Git、Vim、Zshが事前インストール済み
- 日本語対応済み
- カラー表示対応
- デフォルトシェルがZshに設定済み
- Git情報をプロンプトに表示

## 環境選択

### Debian版

- 標準的なLinux環境
- 安定性重視
- より多くのパッケージが利用可能

```bash
# Debian版の起動
docker-compose build
docker-compose up -d
docker-compose exec debian zsh
```

### Alpine版

- 軽量な環境（イメージサイズが小さい）
- メモリ使用量が少ない
- セキュリティ重視

```bash
# Alpine版の起動
docker-compose -f docker-compose.alpine.yaml build
docker-compose -f docker-compose.alpine.yaml up -d
docker-compose -f docker-compose.alpine.yaml exec alpine zsh
```

## 設定ファイルの説明

### Docker関連

- `docker-compose.yaml`: Debian版のコンテナ設定
- `docker-compose.alpine.yaml`: Alpine版のコンテナ設定
- `Dockerfile`: Debian版のDockerfile
- `Dockerfile.alpine`: Alpine版のDockerfile

### シェル設定

- `.zshrc`: Zshの設定ファイル
  - カラー表示対応
  - Gitブランチ情報の表示
  - コマンド履歴の設定
  - 補完機能の強化

### エディタ設定

- `.vimrc`: Vimの設定ファイル
  - 日本語対応
  - UTF-8設定
  - カラースキーム設定
  - 行番号表示
  - シンタックスハイライト
  - インデント設定

## カスタマイズ

### Zshの設定変更

`.zshrc`を編集することで、プロンプトの表示やエイリアスなどをカスタマイズできます。

主な設定項目：

- プロンプトの表示形式
- エイリアス設定
- 補完の動作

### Vimの設定変更

`.vimrc`を編集することで、エディタの動作をカスタマイズできます。

主な設定項目：

- カラースキーム
- インデント幅
- キーマッピング
- 表示オプション

## 注意事項

- コンテナ内のファイルは`/workspace`にマウントされます
- ホストのファイルシステムとの同期は自動的に行われます
- 設定ファイルの変更後は、コンテナの再ビルドが必要です
