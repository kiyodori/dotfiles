"---------------------------------------------------------------------------
" vimfiler.vim
"

" VimFilerを経由して:Unite bookmarkを使用
call unite#custom_default_action('source/bookmark/directory' , 'vimfiler')

" vimデフォルトのエクスプローラをvimfilerで置き換える
let g:vimfiler_as_default_explorer = 1

" セーフモードを無効にした状態で起動する
let g:vimfiler_safe_mode_by_default = 0

" Editを新規タブとして開く
let g:vimfiler_edit_action = 'tabopen'

