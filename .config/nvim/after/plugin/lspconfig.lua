require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls" },
})

--#########################################
-- Define Functions and Variables here
--#########################################
local on_attach = function(_, _)
  vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})                   -- rename variables in current buffer
  vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})              -- code action
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})                       -- get references in current buffer
  vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, {})  -- get references using telescope in current buffer
  vim.keymap.set("n", "K", vim.lsp.buf.hover, {})                             -- documentation
  vim.keymap.set("n", "<leader>e", ":lua vim.diagnostic.open_float()<CR>", {}) -- documentation
end

local capabilites = require("cmp_nvim_lsp").default_capabilities()

--#########################################
-- Require LSPs here
--#########################################
-- lua
require("lspconfig").lua_ls.setup({
  on_attach = on_attach,
  capabilities = capabilites,
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
})

-- dart flutter [inbuild lsp that comes with dart (no need to install it with mason)]
require("lspconfig").dartls.setup({
  on_attach = on_attach,
  capabilities = capabilites,
  cmd = { "/opt/flutter/bin/dart", "language-server", "--protocol=lsp" },
})

-- json lsp (jsonls)
require("lspconfig").jsonls.setup({
  on_attach = on_attach,
  capabilities = capabilites,
})

-- java lsp (jdtls)
require("lspconfig").jdtls.setup({
  on_attach = on_attach,
  capabilities = capabilites,
})

-- html
require("lspconfig").html.setup({
  on_attach = on_attach,
  capabilities = capabilites,
})

-- tailwind
require("lspconfig").tailwindcss.setup({
  on_attach = on_attach,
  capabilities = capabilites,
})

-- javascript typescirpt (eslint and tsserver)
require("lspconfig").eslint.setup({
  on_attach = on_attach,
  capabilities = capabilites,
})
require("lspconfig").tsserver.setup({
  on_attach = on_attach,
  capabilities = capabilites,
})

-- bash
require("lspconfig").bashls.setup({
  on_attach = on_attach,
  capabilities = capabilites,
})
