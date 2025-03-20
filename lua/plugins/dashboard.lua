return {
	"goolord/alpha-nvim",
	dependencies = {},
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
			dashboard.button("e", "  ~ New file", "<CMD>ene<BAR> startinsert <CR>"),
			dashboard.button("f", "  ~ Find file", "<CMD>Telescope find_files<CR>"),
			dashboard.button("q", "󰈆  ~ Quit NVIM", "<CMD>qa!<CR>"),
		}

		vim.api.nvim_create_autocmd("User", {
			pattern = "AlphaReady",
			callback = function()
				vim.keymap.set("n", "<ScrollWheelUp>", "<Nop>", { buffer = true })
				vim.keymap.set("n", "<ScrollWheelDown>", "<Nop>", { buffer = true })
			end,
		})

		alpha.setup(dashboard.opts)
	end,
}
