"---------------------------------------------------------------------------
" kiyodori's .vimrc
"---------------------------------------------------------------------------
let $VIM_RC = expand('~/.vim/rc')

if has('vim_starting')
  source $VIM_RC/init.rc.vim
endif

source $VIM_RC/dein.rc.vim
source $VIM_RC/basic.rc.vim
source $VIM_RC/keymapping.rc.vim
source $VIM_RC/color.rc.vim
source $VIM_RC/tab.rc.vim

