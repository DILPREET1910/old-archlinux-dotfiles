local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.formatting.prettier,
		null_ls.builtins.diagnostics.eslint, -- javascript and typescript linter
		null_ls.builtins.diagnostics.shellcheck, -- bash script linter
		null_ls.builtins.diagnostics.java, -- java linter (check style)
	},
})

vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
