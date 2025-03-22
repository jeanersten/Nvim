return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			start_in_insert = true,
			shade_terminals = true,
			direction = "float",
			float_opts = {
				width = 100,
				height = 30,
				border = "curved",
				winblend = 0,
			},
			shell = function()
				if vim.fn.has("win32") == 1 then
          return "pwsh.exe"
        else
          return vim.o.shell
				end
			end,
		})

		vim.api.nvim_create_autocmd("TermOpen", {
			pattern = "term://*",
			callback = function()
				vim.api.nvim_buf_set_keymap(0, "n", "q", "<cmd> ToggleTerm <CR>", { noremap = true, silent = true })
			end,
		})
	end,
}
