" 文字コードの設定
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis
set fileformats=unix,mac,dos

" カラースキームの設定
syntax enable
set background=dark
colorscheme desert

" 表示設定
set number          " 行番号表示
set ruler           " カーソル位置表示
set cursorline     " カーソル行をハイライト
set showcmd        " 入力中のコマンドを表示
set showmatch      " 対応する括弧を表示
set laststatus=2   " ステータスラインを常に表示
set wildmenu       " コマンドライン補完を強化
set wrap           " 長い行を折り返して表示

" インデント設定
set autoindent     " 自動インデント
set smartindent    " スマートインデント
set expandtab      " タブを空白に変換
set tabstop=4      " タブ幅を4に設定
set shiftwidth=4   " インデント幅を4に設定

" 検索設定
set ignorecase     " 大文字小文字を区別しない
set smartcase      " 検索文字に大文字がある場合は大文字小文字を区別
set incsearch      " インクリメンタルサーチ
set hlsearch       " 検索結果をハイライト表示

" 日本語対応
set ambiwidth=double    " 全角文字の表示を適切に
set formatoptions+=mM   " 日本語の行の連結時には空白を入力しない

" バックアップファイルを作成しない
set nobackup
set noswapfile

" クリップボード連携
set clipboard=unnamed,unnamedplus

" キーマッピング
" ESC連打でハイライト解除
nnoremap <Esc><Esc> :nohlsearch<CR>

" 移動関連
nnoremap j gj
nnoremap k gk

" ステータスライン設定
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]

" バッファ操作
set hidden         " 保存されていないバッファがあっても別のファイルを開けるように

" 不可視文字の表示
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%