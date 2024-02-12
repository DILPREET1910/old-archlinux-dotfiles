local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.formatting.prettier,

		-- javascript and typescript linter
		null_ls.builtins.diagnostics.eslint,

		-- bash script linter
		null_ls.builtins.diagnostics.shellcheck,
		null_ls.builtins.code_actions.shellcheck,

		-- java linter (check style)
		null_ls.builtins.diagnostics.checkstyle.with({
			extra_args = { "-c", "/google_checks.xml" },
		}),
	},
})

vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
