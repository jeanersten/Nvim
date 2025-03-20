return {
  "goolord/alpha-nvim",
  lazy = false,
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.opts.layout[1].val = 10

    dashboard.section.header.val = {
      [[ ((   ) ).          (   (  ]],
      [[ ))\ (\(   (  (   ( )\: )\ ]],
      [[((_))))(|  )\ )\: )\(_)((_)]],
      [[| \| |()\ ((_)(_)__)  \/  |]],
      [[| .  | -_) _ \ V / | |\/| |]],
      [[|_|\_|___|___/\_/|_|_|  |_|]],
    }

    dashboard.section.buttons.val = {
      dashboard.button("f", "󰍉   Open Explorer", "<CMD> Telescope file_browser <CR>"),
      dashboard.button("c", "󰓙   Check Health", "<CMD> checkhealth <CR>"),
      dashboard.button("q", "󰈆   Quit", "<CMD> qa! <CR>"),
    }

    dashboard.section.footer.val = {
      "Only I level up. ",
    }

    alpha.setup(dashboard.opts)

    vim.api.nvim_create_autocmd("User", {
      pattern = "AlphaReady",
      callback = function()
        vim.keymap.set("n", "<ScrollWheelUp>", "<Nop>", { buffer = true })
        vim.keymap.set("n", "<ScrollWheelDown>", "<Nop>", { buffer = true })
      end,
    })
  end,
}

