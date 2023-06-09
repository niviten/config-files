" show line number
set number

" indentation
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" 80, 120 limit
set colorcolumn=80,120

" splits
set splitbelow splitright

" remap splits navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" make adjusting split sizes a bit more friendly
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

" switching between tabs
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
" moving tabs
nnoremap <silent> <A-Left> :tabm -1<CR>
nnoremap <silent> <A-Right> :tabm +1<CR>

" setting path
" used in :tabfind
set path=.,,**

" search in file
" case insensitive search
" default is sensitive search
set ignorecase
" highlight search
set hlsearch


" vim-plug
call plug#begin()

    " theme
    Plug 'lifepillar/vim-solarized8'
    
    " nerd tree
    Plug 'preservim/nerdtree'

call plug#end()

" theme
set background=light
colorscheme solarized8_high
