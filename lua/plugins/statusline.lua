return {
	"nvim-lualine/lualine.nvim",
	config = function()
		local default = {
			filetypes = { "minifiles", "toggleterm", "TelescopePrompt" },
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch" },
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
		}

		require("lualine").setup({
			options = {
				icons_enabled = true,
				theme = "auto",
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
				disabled_filetypes = {
					statusline = { "alpha" },
				},
				always_show_tabline = true,
				globalstatus = true,
			},
			sections = {
				lualine_a = { "mode" },

				lualine_b = { "branch", "filename", "diff" },
				lualine_c = { "diagnostics" },
				lualine_x = { "encoding", "fileformat", "filetype" },
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
			extensions = { default },
		})
	end,
}

