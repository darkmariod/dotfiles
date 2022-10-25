call plug#begin()
Plug 'NLKNguyen/papercolor-theme'
Plug 'arcticicestudio/nord-vim'
Plug 'preservim/nerdtree'
" If installed using git
Plug '~/.fzf'

" Syntax and language improvements
Plug 'jelera/vim-javascript-syntax'
Plug 'othree/yajs.vim'
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'

" React Syntax highlighting and indenting Support
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'styled-components/vim-styled-components'


call plug#end()

let mapleader = ","
map <leader>h :nohlsearch<CR>
map <leader>q :quit<CR>

"FZF
" If installed using git
set rtp+=~/.fzf
nnoremap <silent> <C-p> :FZF<CR>

" NEERDTree
nnoremap <leader>ne :NERDTree<CR>
nnoremap <leader>nf :NERDTreeFind<CR>

" Indentation 
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set wrap

set number

" Theme
set t_Co=256   " This is may or may not needed.
set background=light
colorscheme PaperColor

syntax on

set clipboard^=unnamed,unnamedplus

set hlsearch
set incsearch
set shortmess-=S

" Emmet
let g:user_emmet_leader_key='<tab>'
let g:user_emmet_settings = {
\  'javascript.jsx' : {
\      'extends' : 'jsx',
\  },
\}

autocmd FileType html,css,js,javascript.jsx EmmetInstall

" Deactivate cursor keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" Hide mouse when typing
set mouse=a
set mousehide
