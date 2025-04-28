return {
	{
		-- mason
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},

	{
		-- mason-lspconfig
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"ts_ls",
					"rust_analyzer",
					"bashls",
					"csharp_ls",
					"cssls",
					"html",
					"jsonls",
					"hyprls",
					"java_language_server",
					"htmx",
					"ast_grep",
				},
			})
		end,
	},
	{
		-- lspconfig
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.rust_analyzer.setup({
				capabilities = capabilities,
			})
			lspconfig.bashls.setup({
				capabilities = capabilities,
			})
			lspconfig.csharp_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.cssls.setup({
				capabilities = capabilities,
			})
			lspconfig.html.setup({
				capabilities = capabilities,
			})
			lspconfig.jsonls.setup({
				capabilities = capabilities,
			})
			lspconfig.ts_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.hyprls.setup({
				capabilities = capabilities,
			})
			lspconfig.java_language_server.setup({
				capabilities = capabilities,
			})
			lspconfig.htmx.setup({
				capabilities = capabilities,
			})
			lspconfig.ast_grep.setup({
				capabilities = capabilities,
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
