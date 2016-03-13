source ~/.vimrc.bepo
syntax on
set background=dark
set t_Co=256
colors mango
set number

if has("autocmd")
  autocmd! bufwritepost .vimrc source ~/.vimrc
endif

execute pathogen#infect()

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

set tabstop=4 shiftwidth=4 expandtab

filetype plugin on

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

"ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim

nnoremap <C-J> <C-W><C-J> "Ctrl-j to move down a split
nnoremap <C-K> <C-W><C-K> "Ctrl-k to move up a split
nnoremap <C-L> <C-W><C-L> "Ctrl-l to move    right a split
nnoremap <C-H> <C-W><C-H> "Ctrl-h to move left a split
set expandtab
set laststatus=2

" airline
let g:airline_theme="solarized"


" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
