
set nocompatible
set showmatch
set nobackup
set nowritebackup
set noswapfile
set incsearch
set ignorecase
set ruler
set whichwrap+=<,>,h,l,[,]
set showcmd
set showmatch
set noic
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set autoindent

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode


filetype off
filetype indent on
filetype plugin on
filetype plugin indent on
syntax on

if has("gui_running")
    set background=light
else
    set t_Co=256
    set background=dark
endif

colorscheme archivas_colors


let g:pydiction_location = '~/.vim/complete-dict' 

set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set titlestring=vim\ %<%F%(\ %)%m%h%w%=%l/%L-%P 
set titlelen=70
if &term == "screen" || &term == "xterm"
    set title
endif
  


