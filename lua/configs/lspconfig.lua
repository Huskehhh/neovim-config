local nvchad_on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "clangd", "pyright", "ruff", "rust_analyzer", "biome" }
local inlay_hint = vim.lsp.inlay_hint

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = function(client, bufnr)
      if client.supports_method "textDocument/inlayHint" or client.server_capabilities.inlayHintProvider then
        inlay_hint.enable(true, { bufnr = bufnr })
      end

      nvchad_on_attach(client, bufnr)
    end,
    on_init = on_init,
    capabilities = capabilities,
  }
end
