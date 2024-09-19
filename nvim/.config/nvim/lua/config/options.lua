-- Set highlight on search
vim.o.hlsearch = false

-- Line number and relative number
vim.wo.number = true
vim.wo.relativenumber = true

-- Sync clipboard between OS and Neovim.
vim.o.clipboard = 'unnamedplus'

-- No line wrap
vim.o.wrap = false

-- Save undo history
vim.o.undofile = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

require('config.indent-options')
