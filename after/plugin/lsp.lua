require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		'tsserver',
		'eslint',
        'lua_ls',
        'gopls',
	}
})

local lsp_zero = require('lsp-zero')
require("lspconfig").tsserver.setup({})
require("lspconfig").eslint.setup({})
require("lspconfig").lua_ls.setup({})
require("lspconfig").gopls.setup({})

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

vim.diagnostic.config({
    signs = false,
})
