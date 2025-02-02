# Dev Environment Docker Setup

[![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)](https://www.docker.com/)
[![Alpine Linux](https://img.shields.io/badge/Alpine_Linux-%230D597F.svg?style=for-the-badge&logo=alpine-linux&logoColor=white)](https://www.alpinelinux.org/)
[![Debian](https://img.shields.io/badge/Debian-D70A53?style=for-the-badge&logo=debian&logoColor=white)](https://www.debian.org/)

開発環境用のDockerコンテナ設定です。Git、Vim、Zshが事前設定された環境を提供します。

[English](./README_EN.md) | 日本語

## 🚀 クイックスタート

```bash
# Debian版
git clone https://github.com/yourusername/dev-env-docker.git
cd dev-env-docker
docker-compose up -d
docker-compose exec debian zsh

# Alpine版（軽量版）
docker-compose -f docker-compose.alpine.yaml up -d
docker-compose -f docker-compose.alpine.yaml exec alpine zsh
```

## ✨ 特徴

- 📦 Git、Vim、Zshが事前インストール済み
- 🇯🇵 日本語環境完全対応
- 🎨 ターミナルのカラー表示対応
- 🔧 Zshをデフォルトシェルとして設定
- 🔍 Gitステータスのプロンプト表示

## 🌟 提供される環境

### 🐋 Debian版

- 安定性を重視した標準的なLinux環境
- 豊富なパッケージが利用可能
- 本番環境との互換性が高い

### 🏔 Alpine版

- 超軽量（イメージサイズ約100MB）
- 最小限のメモリ使用量
- セキュリティ重視の設計

## 📁 ディレクトリ構成

```
.
├── docker-compose.yaml          # Debian環境の設定
├── docker-compose.alpine.yaml   # Alpine環境の設定
├── Dockerfile                   # Debian用Dockerfile
├── Dockerfile.alpine           # Alpine用Dockerfile
├── .zshrc                      # Zsh設定
├── .vimrc                      # Vim設定
└── README.md                   # 日本語ドキュメント
```

## ⚙️ カスタマイズ

### Zsh設定のカスタマイズ

`config/.zshrc`を編集することで以下をカスタマイズ可能：

- プロンプトの表示形式
- エイリアス設定
- 補完の挙動

### Vim設定のカスタマイズ

`config/.vimrc`で以下の設定が可能：

- カラースキーム
- インデント設定
- キーマッピング
- 表示オプション

## 📝 注意事項

- コンテナの作業ディレクトリは`/workspace`
- ホストのファイルシステムと自動同期
- 設定変更後はコンテナの再ビルドが必要
