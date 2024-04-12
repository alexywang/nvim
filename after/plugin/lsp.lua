local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

local lspconfig = require('lspconfig')

require('lspconfig-bundler').setup()

require("mason").setup({})
require("mason-lspconfig").setup({
	ensure_installed = {
		"tsserver",
		"eslint",
		"lua_ls",
		"rust_analyzer",
    "solargraph",
	},
	handlers = {
		function(server_name)
			require('lspconfig')[server_name].setup({})
		end,
    ["solargraph"] = function()
      require('lspconfig').solargraph.setup({
        --cmd = { "bundle exec solargraph", "stdio" },
        settings = {
          solargraph = {
            diagnostics = true,
            useBundler = true
          },
        },
      })
    end,
	},
})



local cmp = require('cmp')

cmp.setup({
    completion = { -- start on the first menu item
        completeopt = "menu,menuone,noinsert"
    },

    mapping = cmp.mapping.preset.insert({
        ['<CR>'] = cmp.mapping.confirm({select = false}),
    }),
})

