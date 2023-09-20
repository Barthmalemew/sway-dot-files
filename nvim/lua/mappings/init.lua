--mapping leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--crtl-c to esc
vim.keymap.set("i", "C-c>", "<esc>", opts)

--neo-tree
vim.keymap.set('n', '<leader>t', ':Neotree toggle<CR>', opts)

--terminal escape
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', opts)

--telescope
vim.keymap.set('n', '<leader>f', ':Telescope find_files<CR>', opts)
