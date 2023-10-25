vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move lines up and down
vim.api.nvim_set_keymap('n', '<C-j>', ':m .+1<CR>==', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', ':m .-2<CR>==', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-j>', '<Esc>:m .+1<CR>==gi', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-k>', '<Esc>:m .-2<CR>==gi', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<C-j>', ':m \'>+1<CR>gv=gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<C-k>', ':m \'<-2<CR>gv=gv', { noremap = true, silent = true })

-- Cursor will stay in the middle when doing <C-d> and <C-u>
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Cursor will stay in the middle when navigation search
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste (overwrite) without copy
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Yank to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Looks like Ctrl+c works as Esc except while editing multilines
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Annoying Q
vim.keymap.set("n", "Q", "<nop>")

-- Vertical resizing with Ctrl-Left and Ctrl-Right
vim.api.nvim_set_keymap('n', '<C-Left>', ':vertical resize +3<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-Right>', ':vertical resize -3<CR>', { noremap = true, silent = true })
-- Horizontal resizing with Ctrl-Up and Ctrl-Down
vim.api.nvim_set_keymap('n', '<C-Up>', ':resize +3<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-Down>', ':resize -3<CR>', { noremap = true, silent = true })
