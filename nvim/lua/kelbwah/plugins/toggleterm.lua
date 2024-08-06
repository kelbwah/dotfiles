return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		local config = require("toggleterm")
		config.setup({
			direction = "float",
			size = 10,
			open_mapping = "<leader>mt",
		})
	end,
}
