vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set mouse=a")
vim.cmd("set autoindent")
vim.cmd("set smartindent")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set expandtab")
vim.cmd("set langmap=tj,nk,sl")
vim.opt.clipboard = 'unnamedplus'
vim.g.mapleader = " "

vim.api.nvim_set_keymap('n', '<leader>m', ':vsplit<cr>:term<cr>', {noremap = true})
vim.api.nvim_set_keymap('t', '<leader>w', "<C-\\><C-n><C-w>h",{silent = true})
vim.api.nvim_set_keymap('t', '<leader>]', "exit<CR> && y<CR>",{silent = true})
