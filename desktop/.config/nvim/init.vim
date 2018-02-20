
""" Plugin manager
" Plug 'junegunn/vim-plug'
" Plug 'https://github.com/junegunn/vim-plug'
" Plug '~/path/to/plugin.vim'
call plug#begin('~/.local/share/nvim/plugged')
Plug 'chriskempson/base16-vim'
Plug 'neomake/neomake'
Plug 'Shougo/deoplete.nvim'
Plug 'tweekmonster/wstrip.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'dzeban/vim-log-syntax'
Plug 'vim-scripts/rtorrent-syntax-file'
Plug 'mhinz/neovim-remote'
Plug 'tpope/vim-surround'
Plug 'Yggdroot/indentline'
Plug 'rbgrouleff/bclose.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'will133/vim-dirdiff'
Plug 'tpope/vim-repeat'
call plug#end()

""Potential Installs
"" themes
"Plug 'tomasr/molokai'
"Plug 'fmoralesc/molokayo'
"Plug 'joshdick/onedark.vim'
"Plug 'shougo/denite.nvim'
"Plug 'morhetz/gruvbox'
"" plurgins
"Plug 'ryanoasis/vim-devicons'
"Plug 'mhinz/vim-startify'
"Plug 'jacoborus/tender.vim'
"Plug 'bling/vim-bufferline'
"Plug 'will133/vim-dirdiff'
"Plug 'editorconfig/editorconfig-vim'
"Plug 'vim-utils/vim-man'
"Plug 'svermeulen/vim-easyclip'
"Plug 'itchyny/lightline.vim'
"Plug 'scrooloose/nerdtree'
"Plug 'cazador481/fakeclip.neovim'
"Plug 'shougo/denite.nvim'
"Plug 'ipod825/vim-netranger'
"" Source the other config files
source $HOME/.config/nvim/set.vim
source $HOME/.config/nvim/keys.vim
source $HOME/.config/nvim/looks.vim
source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/commands.vim

