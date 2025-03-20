return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    {
      "jayp0521/mason-null-ls.nvim",
      opts = {
        ensure_installed = { "stylua", "clang_format" },
      },
    },
  },
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.clang_format,
      },
    })
  end,
}
