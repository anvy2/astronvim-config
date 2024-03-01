-- customize mason plugins
return {
	-- use mason-lspconfig to configure LSP installations
	{
		"williamboman/mason-lspconfig.nvim",
		-- overrides `require("mason-lspconfig").setup(...)`
		opts = function(_, opts)
			-- add more things to the ensure_installed table protecting against community packs modifying it
			opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
				-- "lua_ls",
				"clangd",
				"rust_analyzer",
				"gopls",
				"lua_ls",
				"pyright",
				"taplo",
				"sqls",
			})
		end,
	},
	-- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
	{
		"jay-babu/mason-null-ls.nvim",
		-- overrides `require("mason-null-ls").setup(...)`
		opts = function(_, opts)
			-- add more things to the ensure_installed table protecting against community packs modifying it
			opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
				-- "prettier",
				"stylua",
				"luacheck",
				"staticcheck",
				"djlint",
				"revive",
				"ruff",
				"ast_grep",
				"black",
				"gofumpt",
				"goimports-reviser",
				"gomodifytags",
				"sqlfluff",
				"sqlfmt",
			})
		end,
	},
	{
		"jay-babu/mason-nvim-dap.nvim",
		-- overrides `require("mason-nvim-dap").setup(...)`
		opts = function(_, opts)
			-- add more things to the ensure_installed table protecting against community packs modifying it
			opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
				"delve",
				"codelldb",
				"debugpy",
			})
		end,
	},
}
