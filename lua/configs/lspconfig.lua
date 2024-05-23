local nvchad_on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "clangd", "pyright", "ruff_lsp", "rust_analyzer" }

local lsp_inlayhints = require "lsp-inlayhints"

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = function(client, bufnr)
      lsp_inlayhints.on_attach(client, bufnr)
      nvchad_on_attach(client, bufnr)
    end,
    on_init = on_init,
    capabilities = capabilities,
  }
end
