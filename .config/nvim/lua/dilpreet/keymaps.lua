-- set leader key
vim.g.mapleader = " "

--##############################
-- Normal Mode keybinds
--##############################
vim.keymap.set("n","<leader>pv",vim.cmd.Ex) -- go back to previous Explorer (if in file)

--##############################
-- Insert Mode keybinds
--##############################
vim.keymap.set("i", "jj", "<ESC>", { silent = true })
