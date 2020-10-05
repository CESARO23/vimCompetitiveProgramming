set title
set number
set mouse=a
set cursorline
set colorcolumn=120
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set noshowmode
set autoread
set autoindent
set confirm
set splitbelow
set splitright
set scrolloff=5
set matchpairs+=<:>
set backspace=indent,eol,start
set ttyfast
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}

call plug#begin('~/.vim/plugged')

" temas
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'morhetz/gruvbox'

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }
Plug 'vim-airline/vim-airline'

call plug#end()

colorscheme dracula
" let g:gruvbox_contrast_dark="hard"

" Cerrar el panel de archivos al instanciar uno
let NERDTreeQuitOnOpen=1

let mapleader=" "

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>

let g:airline_powerline_fonts = 1

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
:imap ii <Esc>
source ~/.coc.config.vim
