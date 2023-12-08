vim.g.loaded_netq=1
vim.g.loaded_netrwPlugin=1

require('nvim-tree').setup()

vim.keymap.set('n','<C-n>',':NvimTreeFindFileToggle<CR>')
