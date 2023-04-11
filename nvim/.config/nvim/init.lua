require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.lualine"

vim.cmd [[colorscheme sonokai]]
vim.g.sonokai_better_performance = 1

require("presence").setup({
  main_image = "file"
})

vim.api.nvim_create_autocmd("User", {
  pattern = "GoyoEnter",
  callback = function()
    vim.api.nvim_command("Limelight")
    require("lualine").hide()
  end,
})
vim.api.nvim_create_autocmd("User", {
  pattern = "GoyoLeave",
  callback = function()
    vim.api.nvim_command("Limelight!")
    require("lualine").hide({ unhide=true })
  end,
})
