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
local lua_setting = {
    on_init = function(client)
        client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
            runtime = {
                version = 'LuaJIT'
            },
            workspace = {
                checkThirdParty = false,
                library = {
                    vim.env.VIMRUNTIME
                }
            }
        })
    end,
    settings = {
        Lua = {}
    }
}

require("lspconfig").tsserver.setup({})
require("lspconfig").eslint.setup({})
require("lspconfig").lua_ls.setup(lua_setting)
require("lspconfig").gopls.setup({})

lsp_zero.on_attach(function(_, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

vim.diagnostic.config({
    signs = false,
})
