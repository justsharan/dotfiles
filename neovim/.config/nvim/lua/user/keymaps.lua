local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- Remaps
keymap('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Telescope keybindings
local telescope_ok, telescope = pcall(require, 'telescope.builtin')
if not telescope_ok then
  return
end

vim.keymap.set('n', '<leader>f', telescope.find_files, {})

-- Navigate buffers
keymap('n', '<S-l>', ':bnext<CR>', opts)
keymap('n', '<S-h>', ':bprevious<CR>', opts)
