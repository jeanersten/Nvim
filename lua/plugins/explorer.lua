return {
	"nvim-telescope/telescope.nvim",
	event = "VimEnter",
	branch = "0.1.x",
	dependencies = {
		{ "nvim-lua/plenary.nvim" },
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
			cond = function()
				return vim.fn.executable("make") == 1
			end,
		},
		{ "nvim-tree/nvim-web-devicons" },
		{ "nvim-telescope/telescope-ui-select.nvim" },
		{ "nvim-telescope/telescope-file-browser.nvim" },
	},
	config = function()
		require("telescope").setup({
			defaults = {
				initial_mode = "normal",
				sorting_strategy = "ascending",
				mappings = {
					n = { ["q"] = require("telescope.actions").close },
				},
			},
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown(),
				},
				["file_browser"] = {
					no_ignore = true,
					dir_icon = "",
					mappings = {
						["n"] = {
							["o"] = function()
								if vim.fn.has("win32") == 1 then
									local action_state = require("telescope.actions.state")
									local entry = action_state.get_selected_entry()
									if entry and entry.path then
										vim.fn.jobstart({ "cmd.exe", "/c", "start", "", entry.path }, { detach = true })
									end
								end
							end,
						},
					},
				},
			},
		})

		require("telescope").load_extension("fzf")
		require("telescope").load_extension("ui-select")
		require("telescope").load_extension("file_browser")
	end,
}
