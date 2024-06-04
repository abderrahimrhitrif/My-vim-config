require('lsp-zero')
lsp = require('lsp-zero')

-- Configure mason-lspconfig


-- Configure `nvim-cmp`
local cmp = require'cmp'


require("mason").setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    },
  },
})

require("mason-lspconfig").setup({
  ensure_installed = { "clangd","jdtls"   }, -- Add other servers you want to ensure are installed
})
cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
    end,
  },
  mapping = {
    ['<C-y>'] = cmp.mapping.confirm({ select = true }), -- Confirm completion with Ctrl-y
    ['<C-e>'] = cmp.mapping.close(), -- Close the completion window with Ctrl-e
    ['<C-space>'] = cmp.mapping.complete(), -- Trigger completion manually with Ctrl-space
    ['<Tab>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }), -- Select next item with Tab
    ['<S-Tab>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }), -- Select previous item with Shift-Tab
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'vsnip' }, -- For vsnip users.
  }, {
    { name = 'buffer' },
    { name = 'path' },
  })
})

-- Setup lsp-zero (no need for .ensure_installed)
lsp.setup_servers({
  { name = 'clangd', on_attach = function(client, bufnr)
    -- Server-specific configurations if needed
  end },
    { name = 'jdtls', on_attach = function(client, bufnr)
    -- Java-specific configurations if needed
  end },
})

