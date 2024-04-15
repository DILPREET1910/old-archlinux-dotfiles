-- set leader key
vim.g.mapleader = " "

--##############################
-- Normal Mode keybinds
--##############################
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- go back to previous Explorer (if in file)
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>") -- clear search
vim.keymap.set("n", "y", '"+y') -- yank to system clipboard
vim.keymap.set("n", "yy", '"+yy') -- yank to system clipboard
vim.keymap.set("n", "<leader>q", "@q") -- execute macro
vim.keymap.set("n", "<leader>p", '"_dP') -- don't let delete fuck up your registory
vim.keymap.set("n", "<leader>sv", ":vs<CR>") -- vertical split
vim.keymap.set("n", "<leader>sh", ":sp<CR>") -- horizontal split
vim.keymap.set("n", "<leader>nd", ":NoiceDismiss<CR>") -- dismiss notification

-- neovim leetcode
vim.keymap.set("n", "<leader>lt", ":Leet test<CR>")
vim.keymap.set("n", "<leader>lr", ":Leet run<CR>")
vim.keymap.set("n", "<leader>ls", ":Leet submit<CR>")

--##############################
-- Insert Mode keybinds
--##############################
vim.keymap.set("i", "jj", "<ESC>", { silent = true })

--##############################
-- Visual Mode keybinds
--##############################
vim.keymap.set("v", "y", '"+y') -- yank to system clipboard
