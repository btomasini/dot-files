execute pathogen#infect()
syntax on
filetype plugin indent on
autocmd vimenter * NERDTree
set wildmenu
set wildmode=list:longest
map <C-n> :NERDTreeToggle<CR>
color codeschool
let g:NERDTreeWinPos = "right"
set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set go-=L " Removes left hand scroll bar
:set cpoptions+=$ " puts a $ marker for the end of words/lines in cw/c$ commands
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
map <C-k> <C-w>k
map <C-j> <C-w>j
map <C-l> <C-w>l
map <C-h> <C-w>h
let mapleader=","
inoremap jj <ESC>
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
let g:SuperTabDefaultCompletionType = "context"
let g:tagbar_usearrows = 1
nnoremap <leader>l :TagbarToggle<CR>
set backupcopy=yes
" Set textwidth to 80 on markdown files
au BufRead,BufNewFile *.md setlocal textwidth=80
" Copy just pasted entry
xnoremap p pgvy
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>
" disable fmt on save
let g:go_fmt_autosave = 0

