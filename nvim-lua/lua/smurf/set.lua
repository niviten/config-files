-- Show line number (relative)
vim.opt.number = true
vim.opt.relativenumber = true

-- Indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- No wrap
vim.opt.wrap = false

-- No backup except for undodir
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Search things
vim.opt.ignorecase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Colors
vim.opt.termguicolors = true

-- Copied from ThePrimeagen
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
vim.opt.updatetime = 50

-- 80, 120
vim.cmd('set colorcolumn=80,120')
vim.cmd('let &colorcolumn="80," . join(range(120, 999), ",")')

-- Use system clipboard
vim.opt.clipboard:append('unnamed')
vim.opt.clipboard:append('unnamedplus')

-- Splits in natural way
vim.o.splitbelow = true
vim.o.splitright = true

-- Enable filetype plugins and indentations
vim.cmd('filetype plugin indent on')
-- Set filetype-specific settings
vim.cmd('autocmd FileType javascript setlocal ts=2 sts=2 sw=2 expandtab smartindent')
vim.cmd('autocmd FileType typescript setlocal ts=2 sts=2 sw=2 expandtab smartindent')
vim.cmd('autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab smartindent')
vim.cmd('autocmd FileType c setlocal ts=4 sts=4 sw=4 expandtab smartindent')
vim.cmd('autocmd FileType cpp setlocal ts=4 sts=4 sw=4 expandtab smartindent')
vim.cmd('autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab smartindent')
vim.cmd('autocmd FileType go setlocal ts=4 sts=4 sw=4 expandtab smartindent')
vim.cmd('autocmd FileType rust setlocal ts=4 sts=4 sw=4 expandtab smartindent')
vim.cmd('autocmd FileType json setlocal ts=2 sts=2 sw=2 expandtab smartindent')
vim.cmd('autocmd FileType javascriptreact setlocal ts=2 sts=2 sw=2 expandtab smartindent')
