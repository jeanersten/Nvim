return {
	"sainnhe/gruvbox-material",
	priority = 1000,
	config = function()
		vim.g.gruvbox_material_background = "hard"
		vim.g.gruvbox_material_pallete = "mix"
		vim.cmd([[colorscheme gruvbox-material]])
		vim.api.nvim_set_hl(0, "FloatBorder", { bg = "#1d2021", fg = "#45403d" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#1d2021" })
	end,
}
