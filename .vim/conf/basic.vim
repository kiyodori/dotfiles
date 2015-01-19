"---------------------------------------------------------------------------
" Basic Settings
"---------------------------------------------------------------------------

"新しい行のインデントを現在行と同じにする
set autoindent 
"vi互換をオフする
set nocompatible
"タブの代わりに空白文字を指定する
set expandtab
"変更中のファイルでも、保存しないで他のファイルを表示する
set hidden
"インクリメンタルサーチを行う
set incsearch
"行番号を表示する
set number
"挿入モードでのバックスペースキーでの削除を有効にする
set backspace=start,eol,indent
"コマンドラインモードでの保管表示の形式
set wildmenu wildmode=list:full
"閉括弧が入力された時、対応する括弧を強調する
set showmatch
"新しい行を作った時に高度な自動インデントを行う
set smarttab
"grep検索を設定する
set grepformat=%f:%l:%m,%f:%l%m,%f\ \ %l%m,%f
set grepprg=grep\ -nh
"検索結果のハイライトをEsc連打でクリアする
set hlsearch
nnoremap <ESC><ESC> :nohlsearch<CR>
nnoremap <C-c><C-c> :nohlsearch<CR>
nnoremap <C-j><C-j> :nohlsearch<CR>
"マウスとの連動機能を無効にする
set mouse=
"行を超えてカーソルを移動する
set whichwrap=b,s,[,],<,>,~
"シンタックスハイライトを有効にする
syntax on
"ステータスラインの設定
set laststatus=2
set statusline=%F%r%h%=
"yank to clipboard
set clipboard=unnamed,autoselect
