"---------------------------------------------------------------------------
" Plugin Settings
"---------------------------------------------------------------------------

"---------------------------------------------------------------------------
" rainbow_parentheses.vimの括弧の色付けを有効化
" 

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare

"---------------------------------------------------------------------------
" neocomplete.vim
" 

let g:neocomplete#enable_at_startup = 1
let g:neocomplete#force_overwrite_completefunc = 1

"---------------------------------------------------------------------------
" unite.vim
" 

nmap     <Space>u [unite]
nnoremap <silent> [unite]b  :<C-u>Unite buffer<CR>
nnoremap <silent> [unite]r  :<C-u>Unite file_rec<CR>
nnoremap <silent> [unite]f  :<C-u>UniteWithBufferDir file<CR>
nnoremap <silent> [unite]m  :<C-u>Unite mapping<CR>

"インサートモードで開始しない
let g:unite_enable_start_insert = 0

" vinarise
let g:vinarise_enable_auto_detect = 1

" unite-grepのバックエンドをagに切り替える
" http://qiita.com/items/c8962f9325a5433dc50d
let g:unite_source_grep_command = 'ag'
let g:unite_source_grep_default_opts = '--nocolor --nogroup'
let g:unite_source_grep_recursive_opt = ''
let g:unite_source_grep_max_candidates = 200

" 選択した文字列をunite-grep
" https://github.com/shingokatsushima/dotfiles/blob/master/.vimrc
vnoremap /g y:Unite grep::-iHRn:<C-R>=escape(@", '\\.*$^[]')<CR><CR>

"---------------------------------------------------------------------------
" VimFiler
" 

" VimFilerを経由して:Unite bookmarkを使用
call unite#custom_default_action('source/bookmark/directory' , 'vimfiler')

"vimデフォルトのエクスプローラをvimfilerで置き換える
let g:vimfiler_as_default_explorer = 1

"セーフモードを無効にした状態で起動する
let g:vimfiler_safe_mode_by_default = 0

" keymapping for VimFiler
nmap     <Space>f [VimFiler]

"現在開いているバッファをIDE風に開く
nnoremap <silent> [VimFiler]f :<C-u>VimFilerBufferDir -split -simple -winwidth=20 -no-quit<CR>

"---------------------------------------------------------------------------
" Vimshell
" 

nmap     <Space>s [VimShell]
nnoremap <silent> [VimShell]s  :<C-u>VimShell<CR>

"---------------------------------------------------------------------------
" Neocomplete
" 

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif
