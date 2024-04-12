local client = vim.lsp.start_client({
	name = "educationallsp",
	cmd = { "/home/dilpreet/Documents/MyPrograms/go/educationalLSP/main" },
	on_attach = require("lspconfig").on_attach,
})

if not client then
	vim.notify("hey, you didnt do the client thing good")
	return
end

vim.api.nvim_create_autocmd("FileType", {
	pattern = "markdown",
	callback = function()
		vim.lsp.but_attach_client(0, client)
	end,
})
