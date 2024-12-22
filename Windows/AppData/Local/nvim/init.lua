-- lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- lazy.nvim plugins and opts

-- Load vimset configuration
require("vimset")

-- lazy.nvim initialization (setup)
require("lazy").setup("plugins")

-- Toggle hex dump view
function ToggleHex()
  if vim.bo.filetype == "xxd" then
    vim.cmd('%!xxd -r')
    vim.bo.filetype = ''
  else
    vim.cmd('%!xxd')
    vim.bo.filetype = 'xxd'
  end
end

-- Set keymap to toggle hex view
vim.api.nvim_set_keymap('n', '<leader>x', ':lua ToggleHex()<CR>', { noremap = true, silent = true })
