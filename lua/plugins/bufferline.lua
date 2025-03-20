return {
	"akinsho/bufferline.nvim",
	lazy = false,
	dependencies = {
		{ "moll/vim-bbye" },
		{ "nvim-tree/nvim-web-devicons" },
	},
	config = function()
		require("bufferline").setup({
			options = {
				always_show_bufferline = true,
				show_buffer_close_icons = false, -- Hide close icons
				show_close_icon = false,
				modified_icon = "*",
				offsets = {
					{
						filetype = "neo-tree",
						text = "Explorer",
						highlight = "Directory",
						separator = true, -- use a "true" to enable the default, or set your own character
					},
				},
			},
		})
	end,
}
