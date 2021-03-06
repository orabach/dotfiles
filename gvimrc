" {{{ Color

gui
colorscheme default
hi StatusLine term=reverse cterm=bold ctermbg=red ctermfg=white gui=bold guibg=#DF0000 guifg=white

" }}}
" {{{ Window

" Window Size
set columns=84
set lines=40

" }}}
" {{{ Font

if has('gui_macvim')
  set guifont:Ricty:h14
elseif has('win32')
  set guifont:MeiryoKe_Gothic:h10
endif

" }}}
" {{{ Clipbard

"set clipboard=unnamed

" }}}
" {{{ Key Mapping

if has('gui_macvim')
  noremap <D-x> "+d
  noremap <D-c> "+y
  noremap <D-v> "+P
  noremap <D-V> "+p
  noremap <D-S-v> "+p
  inoremap <D-v> <C-o>"+P
  inoremap <D-V> <C-o>"+p
  inoremap <D-S-v> <C-o>"+p
  cnoremap <D-v> <C-r>+
  noremap <D-a> ggVG
  nnoremap <C-t> :tabedit<Return>
  nnoremap <C-w> :tabclose<Return>
  nnoremap <C-}> :tabnext<Return>
  nnoremap <C-{> :tabprevious<Return>
elseif has('win32')
  set winaltkeys=no
  noremap <A-x> "+d
  noremap <A-c> "+y
  noremap <A-v> "+P
  noremap <A-S-v> "+p
  inoremap <A-v> <C-o>"+P
  inoremap <A-S-v> <C-o>"+p
  cnoremap <A-v> <C-r>+
  noremap <A-a> ggVG
  nnoremap <C-t> :tabedit<Return>
  nnoremap <C-w> :tabclose<Return>
  nnoremap <C-Tab> :tabnext<Return>
  nnoremap <C-S-Tab> :tabprevious<Return>
endif

" }}}
