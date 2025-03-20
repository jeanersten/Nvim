return {
  "neovim/nvim-lspconfig",
  dependencies = {
    {
      "williamboman/mason.nvim",
      opts = {},
    },
    {
      "williamboman/mason-lspconfig.nvim",
      opts = {
        ensure_installed = { "lua_ls", "clangd" },
      },
    },
    {
      "folke/lazydev.nvim",
      ft = "lua",
      opts = {
        library = {
          { path = "${3rd}/luv/library", words = { "vim%.uv" } },
        },
      },
    },
    { "hrsh7th/cmp-nvim-lsp" },
  },
  config = function()
    local lsp = require("lspconfig")
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    vim.diagnostic.config({
      float = {
        border = "rounded",
      },
    })

    lsp.lua_ls.setup({
      capabilities = capabilities,
    })

    lsp.clangd.setup({
      capabilities = capabilities,
      cmd = { "clangd", "--header-insertion=never", "--background-index", "--clang-tidy", "--log=verbose" },
      init_options = {
        fallbackFlags = { "-std=c++23" },
      },
    })
  end,
}
