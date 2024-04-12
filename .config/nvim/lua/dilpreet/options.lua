-- line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- tabspcae
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

-- indentation
vim.opt.autoindent = true
vim.opt.smartindent = true

-- search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- better splitting
vim.opt.splitbelow = true
vim.opt.splitright = true

-- enable sign column to prevent the screen from jumping
vim.opt.signcolumn = "yes"

-- enable cursor line highlight
vim.opt.cursorline = true

-- always keep 8 line above and below course unless at start/end of file
vim.opt.scrolloff = 8

-- do not comment the next line
vim.opt.formatoptions:remove({ "r", "o" })

-- persistent undo
vim.opt.undodir = "/home/dilpreet/.config/nvim/.undodir"
vim.opt.undofile = true
