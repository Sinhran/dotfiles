return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {"lua_ls", "bashls", "clangd", "cmake", "cssls", "dockerls", "html", "htmx", "jsonls", "tsserver", "marksman", "basedpyright", "sqlls", "somesass_ls", }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.bashls.setup({})
      lspconfig.clangd.setup({})
      lspconfig.cmake.setup({})
      lspconfig.cssls.setup({})
      lspconfig.dockerls.setup({})
      lspconfig.html.setup({})
      lspconfig.htmx.setup({})
      lspconfig.jsonls.setup({})
      lspconfig.tsserver.setup({})
      lspconfig.marksman.setup({})
      lspconfig.basedpyright.setup({})
      lspconfig.sqlls.setup({})
      lspconfig.somesass_ls.setup({})
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  },
}
