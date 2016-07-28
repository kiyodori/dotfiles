"---------------------------------------------------------------------------
" Keymapping Settings
"---------------------------------------------------------------------------

"esc
imap <C-j> <ESC>
map <C-j> <ESC>
cmap <C-j> <ESC>

" mapleaderの設定
let mapleader = ","

" ,のデフォルトの機能は、\で使えるように退避
noremap \  ,

" jkの移動を変更
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

" 文頭と文末に移動する
noremap <Space>h  ^
noremap <Space>l  $

"改行をOで挿入する
nnoremap O :<C-u>call append(expand('.'), '')<Cr>j

"visualモードでのヤンクは+レジスタにコピーする
vnoremap y "+y

"()の中にカーソルを戻す
" map { {}<Left>
" imap [ []<Left>
" imap ( ()<Left>
" imap < <><Left>
