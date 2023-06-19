" truecolors for neovim
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

set number  " show line number

" indentation
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smartindent

set clipboard=unnamed,unnamedplus   " show os clipboard

set colorcolumn=80,120  " show 80, 120 limit
let &colorcolumn='80,' . join(range(120,999),',')   " change bg after column limit

set splitbelow splitright   " splits in natural way

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

set path=.,,**  " search in current directory and subdirectories

set ignorecase  " search ignore case
set hlsearch    " highlight search results
set incsearch   " incremental search

filetype plugin indent on   " enable filetype plugins and indentations
autocmd FileType javascript setlocal ts=2 sts=2 sw=2 expandtab smartindent " set js indentation
autocmd FileType typescript setlocal ts=2 sts=2 sw=2 expandtab smartindent " set ts indentation
autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab smartindent " set html indentation
autocmd FileType c setlocal ts=4 sts=4 sw=4 expandtab smartindent " set c indentation
autocmd FileType cpp setlocal ts=4 sts=4 sw=4 expandtab smartindent " set cpp indentation
autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab smartindent " set python indentation
autocmd FileType go setlocal ts=4 sts=4 sw=4 expandtab smartindent " set go indentation
autocmd FileType rust setlocal ts=4 sts=4 sw=4 expandtab smartindent " set rust indentation
autocmd Filetype json setlocal ts=2 sts=2 sw=2 expandtab smartindent " set json indentation

" Disable ALE by default
let g:ale_enabled = 0
" Disable Copilot by default
let g:copilot_enabled = 0

" vim-plug
call plug#begin()
    " gruvbox used by ThePrimeagen
    Plug 'morhetz/gruvbox'
    
    " nerd tree
    Plug 'preservim/nerdtree'

    " github copilot
    Plug 'github/copilot.vim'

    " for git " not using now
    " Plug 'tpope/vim-fugitive'
    
    " for js
    Plug 'neoclide/coc.nvim', {'branch': 'release'} " Auto completion for js

    " enhanced status bar
    Plug 'itchyny/lightline.vim'

    " Buftabline - Use tabline as buffer list
    " Plug 'ap/vim-buftabline'

    " dense-analysis/ale - Asynchronous Lint Engine
    " Check if it's useful
    " Plug 'dense-analysis/ale'
    
    " Auto pair
    Plug 'jiangmiao/auto-pairs'

    " For rust
    Plug 'rust-lang/rust.vim'

    " ALE
    Plug 'dense-analysis/ale'

    " Search files
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    " Discord presence
    Plug 'andweeb/presence.nvim'

    " wakatime
    Plug 'wakatime/vim-wakatime'

    " commenting tool
    Plug 'preservim/nerdcommenter'
call plug#end()

" theme configs
set background=light    " light theme
let g:gruvbox_contrast_light = 'hard'   " hard contrast
let g:gruvbox_color_column = 'bg1'      " column limit color
colorscheme gruvbox
