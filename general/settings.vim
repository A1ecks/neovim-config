" set leader key
let g:mapleader = "\<Space>"
let g:coc_global_extensions  = ['coc-json', 'coc-git', 'coc-snippets', 'coc-html', 'coc-explorer', 'coc-yaml', 'coc-vimlsp', 'coc-tsserver', 'coc-python', 'coc-css', 'coc-clangd']
let g:floaterm_keymap_new    = '<F4>'
let g:floaterm_keymap_prev   = '<F3>'
let g:floaterm_keymap_next   = '<F2>'
let g:floaterm_keymap_toggle = '<F1>'

" Font setting for GUI Neovim clients
set guifont=PerfectDOSVGA437\ Nerd\ Font\:h12

syntax enable                           " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			            " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=0                        " Always display the status line
set number                              " Line numbers
set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
set showtabline=2                       " Always show tabs
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
"set autochdir                           " Your working directory will always be the same as your working directory

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

" You can't stop me
cmap w!! w !sudo tee %

" Compile and run C++ projects
autocmd Filetype cpp command! RunCode FloatermNew if test -e *.cpp && test -e *.hpp; then g++ *.cpp *.h -o output; else g++ *.cpp -o output; fi; ./output; echo -e ""; echo -e ""; read -n 1 -s -r -p "Press any key to continue..."; echo -e ""; exit 
map <F5> :RunCode<CR>
