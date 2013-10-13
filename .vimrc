if !empty(system("setxkbmap -print|grep bepo"))
    source ~/.vimrc.bepo
endif


if has("autocmd")
  autocmd! bufwritepost .vimrc source ~/.vimrc
endif

execute pathogen#infect()

syntax on

filetype plugin indent on

map <C-n> :NERDTreeToggle<CR>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

let NERDTreeMapOpenInTab='j'
let NERDTreeMapOpenVSplit='k'
let NERDTreeMapRefresh='l'


set pastetoggle=<F2>
set clipboard=unnamed

noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>

let mapleader=","

map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

vnoremap < <gv
vnoremap > >gv

colors af

set tabstop=4 shiftwidth=4 expandtab

" Tab fait un Esc, Maj+Tab fait un Tab
inoremap <Tab> <Esc>
inoremap <S-Tab> <Tab>
 
" Même chose, mais en mode visuel
vnoremap <Tab> <Esc>
vnoremap <S-Tab> <Tab>

inoremap <C-c> <Left>
inoremap <C-t> <Down>
inoremap <C-s> <Up>
inoremap <C-r> <Right>

filetype plugin on
