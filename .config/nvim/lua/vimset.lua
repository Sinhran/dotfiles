vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set mouse=a")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set autoindent")
vim.cmd("set smartindent")
vim.opt.clipboard = 'unnamedplus'
vim.g.mapleader = " "

vim.api.nvim_set_keymap('n', '<leader>t', ':term<cr>', {noremap = true})
