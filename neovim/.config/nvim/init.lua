-- Imports
require 'user.keymaps'
require 'user.lsp'
require 'user.plugins'
require 'user.plugin_config'

-- Some basic settings
vim.opt.backup = false
vim.opt.clipboard = 'unnamedplus'
vim.opt.conceallevel = 0
vim.opt.fileencoding = 'utf-8'
vim.opt.mouse = 'a'
vim.opt.smartindent = true
vim.opt.termguicolors = true
vim.opt.undofile = true
vim.opt.updatetime = 300
vim.opt.writebackup = false
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.number = true
vim.opt.numberwidth = 4

-- Set theme
vim.cmd[[colorscheme nord]]
-- Remove background color, to allow for transparency
vim.cmd[[highlight Normal guibg=none]]
