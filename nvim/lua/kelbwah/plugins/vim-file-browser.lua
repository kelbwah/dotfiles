return {
	"nvim-telescope/telescope-file-browser.nvim",
	dependencies = {
		"nvim-telescope/telescope.nvim",
		"nvim-lua/plenary.nvim",
	},
	config = function()
		require("telescope").setup({
			extensions = {
				file_browser = {
					theme = "ivy",
					hijack_netrw = true,
				},
			},
		})
		require("telescope").load_extension("file_browser")
		vim.keymap.set("n", "<space>ee", ":Telescope file_browser<CR>")
	end,
}
