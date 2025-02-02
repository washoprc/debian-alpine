FROM debian:latest

# システムのアップデートとパッケージのインストール
RUN apt-get update && apt-get install -y \
    git \
    zsh \
    vim \
    && rm -rf /var/lib/apt/lists/*

# デフォルトシェルをzshに変更
RUN chsh -s /bin/zsh root

# .zshrcと.vimrcのコピー
COPY .zshrc /root/.zshrc
COPY .vimrc /root/.vimrc

# ワーキングディレクトリの設定
WORKDIR /workspace

# デフォルトシェルの設定
SHELL ["/bin/zsh", "-c"]
CMD ["/bin/zsh"]