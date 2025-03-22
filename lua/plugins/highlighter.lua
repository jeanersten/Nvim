return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  main = "nvim-treesitter.configs",
  config = function()
    require("nvim-treesitter.install").prefer_git = false
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "lua", "c", "cpp", "cmake", "vim", "vimdoc", "markdown" },
      sync_install = false,
      auto_install = true,
      ignore_install = {},
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = { enable = false },
      modules = {},
    })
  end,
}
