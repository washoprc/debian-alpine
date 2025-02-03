FROM debian:latest

# システムのアップデートとパッケージのインストール
RUN apt-get update && apt-get install -y \
    git \
    zsh \
    vim \
    && rm -rf /var/lib/apt/lists/*

# デフォルトシェルをzshに変更
RUN chsh -s /bin/zsh root

# ~/.config/gitディレクトリを作成
RUN mkdir -p /root/.config/git

# .zshrcと.vimrcのコピー
COPY ./configs/.zshrc /root/.zshrc
COPY ./configs/.vimrc /root/.vimrc
COPY ./configs/gitconfig /root/.config/git/config
COPY ./configs/gitmessage /root/.config/git/message
COPY ./configs/gitignore /root/.config/git/ignore
COPY ./configs/attributes /root/.config/git/attributes

# ワーキングディレクトリの設定
WORKDIR /workspace

# デフォルトシェルの設定
SHELL ["/bin/zsh", "-c"]
CMD ["/bin/zsh"]