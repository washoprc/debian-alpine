# カラー設定を有効化
autoload -Uz colors && colors

# プロンプトの設定
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst

# gitの状態を表示する設定
zstyle ':vcs_info:git:*' formats '%F{green}(%b)%f'
zstyle ':vcs_info:*' enable git

# プロンプトのカスタマイズ
# 青色のディレクトリ名とgitブランチを表示
PROMPT='%F{blue}%~%f ${vcs_info_msg_0_} %# '

# 基本的なエイリアス
alias ls='ls --color=auto'
alias ll='ls -la --color=auto'
alias grep='grep --color=auto'

# ヒストリーの設定
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups
setopt share_history

# 補完の設定
autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'