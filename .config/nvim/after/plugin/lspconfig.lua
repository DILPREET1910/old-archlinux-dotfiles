require('mason').setup()
require('mason-lspconfig').setup({
	ensure_installed = {'lua_ls'}
})

local on_attach = function(_,_)
	vim.keymap.set('n','<leader>rn',vim.lsp.buf.rename,{}) -- rename variables in current buffer
	vim.keymap.set('n','<leader>ca',vim.lsp.buf.code_action, {}) -- code action
	vim.keymap.set('n','gd',vim.lsp.buf.definition,{}) -- get references in current buffer
	vim.keymap.set('n','gr',require('telescope.builtin').lsp_references,{}) -- get references using telescope in current buffer
	vim.keymap.set('n','K',vim.lsp.buf.hover,{}) -- documentation
end

-- lua
require('lspconfig').lua_ls.setup{
	on_attach = on_attach,
	settings={
		Lua = {
			diagnostics = {
				globals = {'vim'}
			}
		}
	}
}

-- dart flutter [inbuild lsp that comes with dart (no need to install it with mason)]
require('lspconfig').dartls.setup{
	on_attach = on_attach,
	cmd={'/opt/flutter/bin/dart','language-server','--protocol=lsp'},
}

-- json lsp (jsonls)
require('lspconfig').jsonls.setup{
	on_attach = on_attach,
}
