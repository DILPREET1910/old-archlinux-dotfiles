-- set leader key
vim.g.mapleader = " "

--##############################
-- Normal Mode keybinds
--##############################
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- go back to previous Explorer (if in file)
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>") -- clear search
vim.keymap.set("n", "y", '"+y') -- yank to system clipboard
vim.keymap.set("n", "yy", '"+yy') -- yank to system clipboard

--##############################
-- Insert Mode keybinds
--##############################
vim.keymap.set("i", "jj", "<ESC>", { silent = true })

--##############################
-- Visual Mode keybinds
--##############################
vim.keymap.set("v", "y", '"+y') -- yank to system clipboard
