# Debian & Alpine Docker Setup

[![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)](https://www.docker.com/)
[![Alpine Linux](https://img.shields.io/badge/Alpine_Linux-%230D597F.svg?style=for-the-badge&logo=alpine-linux&logoColor=white)](https://www.alpinelinux.org/)
[![Debian](https://img.shields.io/badge/Debian-D70A53?style=for-the-badge&logo=debian&logoColor=white)](https://www.debian.org/)

開発環境用のDockerコンテナ設定です。Git、Vim、Zshが事前設定された環境を提供します。

[English](./README_EN.md) | 日本語

## 🚀 クイックスタート

```bash
# Debian版
git clone https://github.com/washoprc/debian-alpine.git
cd debian-alpine
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

```tree
.
├── docker-compose.yaml          # Debian環境の設定
├── docker-compose.alpine.yaml   # Alpine環境の設定
├── Dockerfile                   # Debian用Dockerfile
├── Dockerfile.alpine            # Alpine用Dockerfile
├── configs/                     # 設定ファイル用ディレクトリ
│   ├── .vimrc                  # Vim設定
│   ├── .zshrc                  # Zsh設定
│   ├── attributes              # Git属性設定
│   ├── gitconfig              # Git設定
│   ├── gitignore             # Gitの除外設定
│   └── gitmessage            # Gitコミットメッセージテンプレート
├── README.md                    # 日本語ドキュメント
└── README_EN.md                # 英語ドキュメント
```

## 設定ファイル構成

Dockerイメージ内での設定ファイルは以下のように配置されます：

### Git設定 (`/root/.config/git/`)

Git 2.0以降では、`~/.config/git`を設定ディレクトリとして使用することが推奨されています。これにより：

- `configs/gitconfig` → `/root/.config/git/config`：エイリアスやユーザー情報などの基本設定
- `configs/gitmessage` → `/root/.config/git/message`：一貫性のあるコミットメッセージ形式を維持
- `configs/gitignore` → `/root/.config/git/ignore`：プロジェクト共通の除外ファイル定義
- `configs/attributes` → `/root/.config/git/attributes`：ファイル属性の自動設定（改行コードなど）

### シェル・エディタ設定 (ホームディレクトリ)

従来のdotfile配置規則に従い、直接ホームディレクトリに配置：

- `configs/.zshrc` → `/root/.zshrc`：Zshの起動時設定、エイリアス、環境変数など
- `configs/.vimrc` → `/root/.vimrc`：Vimのキーマップ、プラグイン、表示設定など

## ⚙️ カスタマイズ

### Zsh設定のカスタマイズ

`configs/.zshrc`を編集することで以下をカスタマイズ可能：

- プロンプトの表示形式
- エイリアス設定
- 補完の挙動

### Vim設定のカスタマイズ

`configs/.vimrc`で以下の設定が可能：

- カラースキーム
- インデント設定
- キーマッピング
- 表示オプション

## 📝 注意事項

- コンテナの作業ディレクトリは`/workspace`
- ホストのファイルシステムと自動同期
- 設定変更後はコンテナの再ビルドが必要
