	return {"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local config = require("nvim-treesitter.configs")
			config.setup({
				ensure_installed = {"c", "lua", "vim", "vimdoc", "query", "javascript", "html", "cpp", "css", "csv", "java", "json", "json5", "markdown", "markdown_inline", "php", "python", "rust", "typescript"},
        auto_install = true,
				highlight = { enable = true },
				indent = { enable = true }
			})
		end
	}
