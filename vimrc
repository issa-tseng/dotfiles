" wrap while searching for strings
set wrapscan

" show matching parens
set showmatch
set matchtime=1

" search stuff
set ignorecase
set smartcase
set hlsearch
set incsearch

" soft tabs
set smarttab
set shiftwidth=2
set autoindent
set expandtab

" whitespace
set list listchars=tab:\ \ ,trail:·

" insert mode
set backspace=indent,eol,start

" scrolling
set scrolloff=3

" shortcuts
"  set leader to <space>
let mapleader = " "
"  plugins
nmap <silent> <D-i> :NERDTreeToggle<CR>
map <Leader>c :NERDTreeToggle<CR>
nmap <silent> <D-k> :FufFile **/<CR>
map <Leader>t :FufFile **/<CR>
nmap <silent> <D-j> :FufLine<CR>
map <Leader>h :FufLine<CR>
"  buffers
nmap <silent> <D-S-Left> :bp<CR>
map <Leader><Left> :bp<CR>
nmap <silent> <D-S-Right> :bn<CR>
map <Leader><Right> :bn<CR>
"  autocompletion
imap <S-Esc> <C-x><C-n>
"  wrap next line
inoremap <D-CR> <Esc>o
"  swap ' and `
nnoremap ' `
nnoremap ` '

" allow edited hidden buffers
set hidden

" enable filetype detection
filetype on
filetype plugin on
filetype indent on

" turn on syntax highlighing
syntax on

" longer history (default is 20)
set history=50

" status line
set laststatus=2
set statusline=%y%{GetStatusEx()}%{fugitive#statusline()}%m%r%=:%l,%c
function! GetStatusEx()
    let str = ' [' . &fileformat
    if has('multi_byte') && &fileencoding != ''
        let str = str . ':' . &fileencoding
    endif
    let str = str . '] '
    return str
endfunction

" plugins
"  minibufexplorer
let g:miniBufExplMapWindowNavArrows=1
" pathogen plugin loader
execute pathogen#infect()

