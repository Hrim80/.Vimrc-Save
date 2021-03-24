
"---- General Settings-------
set number
set ruler
set showcmd
set incsearch
set hlsearch
set backspace=indent,eol,start
set clipboard=unnamed

syntax on

"______ Plugins_______

call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug '~/my-prototype-plugin'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/syntastic'
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tmhedberg/SimpylFold'
Plug 'tpope/vim-fugitive'
Plug 'https://github.com/sonph/onehalf'
Plug 'flazz/vim-colorschemes'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'frazrepo/vim-rainbow'
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'

call plug#end()

" ----- Plugin-Specific Settings --------------------------------------

" ----- altercation/vim-colors-solarized settings -----
" Toggle this to "light" for light colorscheme
"set background=dark

" Uncomment the next line if your terminal is not configured for solarized
"let g:solarized_termcolors=256
"let g:molokai_original = 1

" Set the colorscheme
colorscheme tender

"let g:airline_theme='onehalfdark'

let g:lightline = {
      \ 'colorscheme': 'landscape',
      \ }


" ----- bling/vim-airline settings -----
" Always show statusbar
set laststatus=2

" Fancy arrow symbols, requires a patched font
" To install a patched font, run over to
"     https://github.com/abertsch/Menlo-for-Powerline
" download all the .ttf files, double-click on them and click "Install"
" Finally, uncomment the next line
"let g:airline_powerline_fonts = 1

" Show PASTE if in paste mode
let g:airline_detect_paste=1

" Show airline for tabs too
let g:airline#extensions#tabline#enabled = 1

let g:SimpylFold_docstring_preview=1

let g:airline#extensions#tabline#formatter = 'default'  " f/p/file-name.js
let g:airline#extensions#tabline#formatter = 'jsformatter' " path-to/f
let g:airline#extensions#tabline#formatter = 'unique_tail' " file-name.js
let g:airline#extensions#tabline#formatter = 'unique_tail_improved' " f/p/file-name.js


" ======= Key mappings ========

nmap <tab> :NERDTreeToggle<CR>
noremap <C-V> <ESC>:paste<CR><S-Insert><ESC>:nopaste<CR>
nmap <F5> :Files<CR>
nmap \ dd
nmap <S-S> viw
vmap \ U
imap <c-d> <esc> ddi
nmap t :tabnew <CR>
nmap 9 :tabp <CR>
nmap 0 :tabn <CR>
nmap q :q! <CR>
nmap s :w <CR>
nmap <space> za
nmap a :wq <CR>
nmap <s-h> :sp <CR>
nmap <s-v> :vsp <CR>
nmap + :vertical resize +2 <CR>
nmap - :vertical resize -2 <CR>
nmap * :resize +2 <CR>
nmap / :resize -2 <CR>


" Enable folding
set foldmethod=indent
set foldlevel=99

"===========================
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
