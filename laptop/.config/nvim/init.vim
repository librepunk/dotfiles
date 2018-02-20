" Lookup in nvim inccommand
"
" An example for a vimrc file.
"
" To use it, copy it to
"     for Unix:     $HOME/.config/nvim/init.vim
"     for Windows:  %LOCALAPPDATA%\nvim\init.vim

set backup             " keep a backup file (restore to previous version)
set undofile           " keep an undo file (undo changes after closing)
set ruler              " show the cursor position all the time
set showcmd            " display incomplete commands
set undodir=~/nVimDir/undo/
set backupdir=~/nVimDir/backup/
set viewdir=~/nVimDir/view/
set directory=~/nVim/Dir/swapfiles

""" Plugin manager
"" Syntax is
"" for installing plugins
" Plug followed by git repo in quotes
" Plug 'junegunn/vim-plug'
" or 
" Plug 'https://github.com/junegunn/vim-plug'
"" for manually installed plugins
" Plug '~/path/to/plugin.vim'

call plug#begin('~/.local/share/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'chriskempson/base16-vim'
Plug 'neomake/neomake'
Plug 'Shougo/deoplete.nvim'
Plug 'tweekmonster/wstrip.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'dzeban/vim-log-syntax'
Plug 'vim-scripts/rtorrent-syntax-file'
Plug 'nhooyr/neoman'
Plug 'Yggdroot/indentLine'
Plug 'ryanoasis/vim-devicons'
Plug 'will133/vim-dirdiff'
"Plug 'itchyny/lightline.vim'
"Plug 'scrooloose/nerdtree'
"Plug 'cazador481/fakeclip.neovim'
call plug#end()

""" Plugins I may want
"" Themes
"Plug 'tomasr/molokai'
"Plug 'fmoralesc/molokayo'
"Plug 'joshdick/onedark.vim'
"Plug 'Shougo/denite.nvim'
"" Plugins
"Plug 'editorconfig/editorconfig-vim'
"Plug 'Shougo/denite.nvim'

"" Plugin Settings
" Netrw
let g:netrw_banner = 0
let g:netrw_browse_split = 1
" Fake Clip
let g:vim_fakeclip_tmux_plus = 1

" Don't use Ex mode, use Q for formatting
"noremap Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" Switch syntax highlighting on
syntax on

" Also switch on highlighting the last used search pattern.
set hlsearch

" I like highlighting strings inside C comments.
let c_comment_strings=1

" Enable file type detection.
" Use the default filetype settings, so that mail gets 'textwidth' set to 72,
" 'cindent' is on in C files, etc.
" Also load indent files, to automatically do language-dependent indenting.
filetype plugin indent on

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
  autocmd!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  autocmd BufReadPost *
    \ if line("'\"") >= 1 && line("'\"") <= line("$") |
    \   execute "normal! g`\"" |
    \ endif

augroup END

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set buftype=nofile | read ++edit # | 0d_ | diffthis
                 \ | wincmd p | diffthis
endif

"" User Additions
" Commands
command! Sauce :source ~/.config/nvim/init.vim

" Leader Key
let mapleader="\<SPACE>"

"" Keymappings
" Core
nnoremap ; :
nnoremap Q @q
nnoremap <CR> G
nnoremap <BS> gg
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
noremap E g$

" Buffer and tab movement
"noremap <Leader>k k
"noremap <Leader>j j
"noremap <Leader>l l
"noremap <Leader>h h
"noremap <Leader>p gT
"noremap <Leader>n gt

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

" Interface
colorscheme base16-google-dark
set background=dark
set termguicolors

" Misc Settings


set showmatch
set matchtime=2

set splitbelow
set splitright

set virtualedit=onemore

set showcmd
set cmdheight=1

set autoread

set ignorecase
set smartcase

set noerrorbells
set novisualbell

set nobackup
set nowritebackup

set ruler
set number
set relativenumber
set cursorline

set scrolloff=14
set magic

set tm=500
set laststatus=2

set gdefault
set title

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

set linebreak

set autoindent
set autochdir
set smartindent

set wildmenu
set wildmode=longest:list,full
set wildignorecase
set wildchar=<Tab><S-Tab>

set nowrap

" Command mode mapping

" Terminal mode mapping
tnoremap <A-\> <C-\><C-N>
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
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
nnoremap <A-q> :q
nnoremap <A-H> <C-w>H
nnoremap <A-J> <C-w>J
nnoremap <A-K> <C-w>K
nnoremap <A-L> <C-w>L
nnoremap <A-t> <C-w>T
nnoremap <A-T> :tabnew

"" NetRW Settingsg
"let g:netrwsshport = 2222
"
let lfvim = "$HOME/.lf/lf.vim"
if filereadable(lfvim)
   exec "source " . lfvim
endif
