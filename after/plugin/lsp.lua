require('lsp-zero')
lsp = require('lsp-zero')

-- Configure mason-lspconfig
require('mason-lspconfig').setup({
  ensure_installed = { 'clangd' },  -- Replace 'clangd' with other language servers as needed
})

-- Setup lsp-zero (no need for .ensure_installed)
lsp.setup_servers({
  { name = 'clangd', on_attach = function(client, bufnr)
    -- Server-specific configurations if needed
  end },
})

