local lspconfig = require("lspconfig")
local mason = require("mason")
local mason_lsp = require("mason-lspconfig")

local capabilities = require("cmp_nvim_lsp").default_capabilities()

mason.setup()
mason_lsp.setup({
  ensure_installed = { "pyright", "bashls", "jsonls", "lua_ls", "clangd", "rust_analyzer" },
})

local servers = mason_lsp.get_installed_servers()
for _, server in ipairs(servers) do
  lspconfig[server].setup({
    capabilities = capabilities,
  })
end
