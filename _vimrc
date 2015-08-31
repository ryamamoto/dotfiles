"#######################
" 環境設定系
"#######################
set t_Co=256               "256色表示
set nocompatible           "viとの互換モードをOFF,vimデフォルト設定にする
set nobackup               "バックアップ無し
set nowritebackup          "バックアップファイルを作らない
set noswapfile             "スワップファイルを作らない
set nocompatible           "viとの互換モードをOFF
set mouse=a                "マウスモードを有効
set fileencoding=utf8      "文字コードを指定
set clipboard+=unnamed     "OSのクリップボードを使う
set clipboard=unnamed      "OSのクリップボードを使う
set noundofile             "undofileを作成しない
set history=10000          "コマンド、検索パターンを10000件まで履歴に残す


"#######################
" 文字コードを表示
"#######################
:set laststatus=2
:set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P


"#######################
" カラースキーマ設定
"#######################
set background=dark
colorscheme solarized


"#######################
" 表示系
"#######################
syntax on                   "シンタックスをハイライト
set number                  "行番号表示
set showmode                "モード表示
set title                   "編集中のファイル名を表示
set ruler                   "ルーラーの表示
set showcmd                 "入力中のコマンドをステータスに表示する
set showmatch               "対応する括弧をハイライト表示
set laststatus=2            "ステータスラインを常に表示
set textwidth=0             "行の折り返しをしない
set wrap                    "画面幅で折り返す


"#######################
" プログラミングヘルプ系
"#######################
set smartindent             "オートインデント
set expandtab               "タブの代わりに空白文字挿入
set ts=4 sw=4 sts=0         "タブは半角4文字分のスペース

" ファイルを開いた際に、前回終了時の行で起動
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif


"#######################
" 検索系
"#######################
set ignorecase              "検索文字列が小文字の場合は大文字小文字を区別なく検索する
set smartcase               "検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan                "検索時に最後まで行ったら最初に戻る
set noincsearch             "検索文字列入力時に順次対象文字列にヒットさせない
set hlsearch                "検索結果文字列のハイライト表示


"#######################
" 拡張子でフォーマット設定をする
"#######################
augroup filetypedetect      
autocmd! BufNewFile,BufRead *.t setf perl
autocmd! BufNewFile,BufRead *.psgi setf perl
autocmd! BufNewFile,BufRead *.tt setf tt2html
augroup END

