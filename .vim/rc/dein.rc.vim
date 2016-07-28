"---------------------------------------------------------------------------
" dein configurations
"---------------------------------------------------------------------------
if &compatible
  set nocompatible
endif

let s:path = expand('$CACHE/dein')
if !dein#load_state(s:path)
  finish
endif

" 設定開始
call dein#begin(s:path, [expand('<sfile>')] + split(glob('~/.vim/rc/*.toml'), '\n'))
call dein#load_toml('~/.vim/rc/dein.toml', {'lazy': 0})
call dein#load_toml('~/.vim/rc/deinlazy.toml', {'lazy' : 1})

" 設定終了
call dein#end()
call dein#save_state()

" 未インストールものものがあったらインストール
if dein#check_install()
  call dein#install()
endif

filetype plugin indent on

