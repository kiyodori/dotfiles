"---------------------------------------------------------------------------
" NeoBundle Init Settings
"---------------------------------------------------------------------------

if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Lokaltog/powerline'
NeoBundle 'tpope/vim-fireplace'
NeoBundle 'Shougo/vimshell'
NeoBundle 'rking/ag.vim'
NeoBundle 'Shougo/vimfiler.vim'
NeoBundle "slim-template/vim-slim"

" for unite.vim
NeoBundle 'Shougo/unite.vim'
NeoBundle 'tsukkee/unite-help'

" for clojure
NeoBundle 'guns/vim-clojure-static'
NeoBundle 'kien/rainbow_parentheses.vim'
NeoBundle 'tpope/vim-fireplace'
NeoBundle 'tpope/vim-classpath'
NeoBundle 'slimv.vim'

call neobundle#end()

" You can specify revision/branch/tag.
"NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
