return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	---@module "ibl"
	---@type ibl.config
	opts = {
		indent = { char = "│" },
		scope = {
			enabled = true,
			show_exact_scope = true,
			show_start = false,
			show_end = false,
			highlight = { "Function" },
			include = {
				node_type = {
					["*"] = { "*" },
				},
			},
		},
	},
}
