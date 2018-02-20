" Leader Key
let mapleader="\<SPACE>"
" Don't use Ex mode, use Q for formatting
noremap Q gq
" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>
"" Keymappings
" Core
nnoremap ; :
nnoremap Q @q
"nnoremap <CR> G
"nnoremap <BS> gg
inoremap <C-E> <End>
inoremap <C-A> <Home>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>W :wq<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>Q :q!<CR>
nnoremap <Leader>X :qa!
"nnoremap <Leader>WW :w !sudo tee %<CR>
" Alias (command) for saving read only file
command! W w !sudo tee %
command! Ce e $MYNVIMRC
command! Wv cd ~/.config/nvim/ | w! init.vim init.vim.backup

" Standard Movement
noremap k gk
noremap j gj

"noremap b B
"noremap B ^
"noremap E g$

" Misc
" Clear Highlighting via <C-L>
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

"search and Replace
nmap <Leader>s :%s//g<Left><Left>

"" Toggle numbering style via <Leader>r
" Relative numbering
function! NumberToggle()
  if(&relativenumber == 1)
    set nornu
    set number
  else
    set rnu
  endif
endfunc

nnoremap <leader>r :call NumberToggle()<cr>

tnoremap <A-\> <C-\><C-N>
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-n> <C-\><C-N>gt
nnoremap <A-p> <C-\><C-N>gT
" Insert mode mapping
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
" Normal mode mapping
nnoremap <A-n> gt
nnoremap <A-p> gT
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
nnoremap <A-d> :q
nnoremap <A-D> :q!
nnoremap <A-q> :q
nnoremap <A-Q> :q!
nnoremap <A-H> <C-w>H
nnoremap <A-J> <C-w>J
nnoremap <A-K> <C-w>K
nnoremap <A-L> <C-w>L
nnoremap <A-t> <C-w>T
nnoremap <Leader>t :tabnew<CR>
nnoremap <A-N> :tabnew<CR>
"nnoremap <A-+> <C-w>+
"nnoremap <A--> <C-w>-
"nnoremap <A->> <C-w>\>
"nnoremap <A-<> <C-w><
"nnoremap <A-_> <C-w>_
"nnoremap <A-|> <C-w>|
"
"
map <Leader>k <Plug>(Man)
"map <Leader>K <Plug>(Tman)

map ,c <plug>NERDCommenterComment
map ,u <plug>NERDCommenterUncomment
