return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua, -- lua
				null_ls.builtins.formatting.prettier, -- js,ts,html,css
				null_ls.builtins.formatting.gdtoolkit, -- gdscript
				null_ls.builtins.formatting.csharpier, -- c#
				null_ls.builtins.formatting.beautysh, -- bash,zsh
				null_ls.builtins.formatting.black, -- python
				null_ls.builtins.formatting.isort, -- python
				null_ls.builtins.formatting.ast_grep, -- c, c++, rust, go
				null_ls.builtins.diagnostics.gdtoolkit, -- gdscript
				null_ls.builtins.diagnostics.cpplint, -- c, c++
				null_ls.builtins.diagnostics.eslint_d, -- ts, js
				null_ls.builtins.diagnostics.checkstyle, -- java
				null_ls.builtins.diagnostics.bandit, -- python
				null_ls.builtins.diagnostics.alex, -- markdown
				null_ls.builtins.diagnostics.ast_grep, -- c,c++, rust, go
				null_ls.builtins.completion.spell,
			},
		})

		vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format, {})
	end,
}
