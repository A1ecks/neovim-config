" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Themes
    Plug 'joshdick/onedark.vim'
    Plug 'jacoborus/tender.vim'
    Plug 'crusoexia/vim-monokai'
    Plug 'glepnir/oceanic-material'
    Plug 'mhartington/oceanic-next'
    " Intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}  
    " Status Line
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Ranger
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'  
    " Colorizer
    Plug 'norcalli/nvim-colorizer.lua'
    " Rainbow Parenthesis
    Plug 'junegunn/rainbow_parentheses.vim'
    " Startify
    Plug 'mhinz/vim-startify'
    " Git Integration
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    " Sneak
    Plug 'justinmk/vim-sneak'
    " Keymap Helper
    Plug 'liuchengxu/vim-which-key'
    " Floating Terminal
    Plug 'voldikss/vim-floaterm'
    " Snippets
    Plug 'honza/vim-snippets'
    " Floating Terminal
    Plug 'voldikss/vim-floaterm' 
    " Neovim web browser integreation
    Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
    " Task System
    Plug 'skywind3000/asynctasks.vim'
    Plug 'skywind3000/asyncrun.vim'

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
