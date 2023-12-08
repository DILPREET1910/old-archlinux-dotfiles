-- set leader key
vim.g.mapleader = " "

--##############################
-- Normal Mode keybinds
--##############################
vim.keymap.set("n","<leader>pv",vim.cmd.Ex) -- go back to previous Explorer (if in file)
vim.keymap.set("n","<leader>h",':nohlsearch<CR>') -- clear search

--##############################
-- Insert Mode keybinds
--##############################
vim.keymap.set("i", "jj", "<ESC>", { silent = true })
