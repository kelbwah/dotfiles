return {
  "navarasu/onedark.nvim",
  priority = 1000, -- Ensure it loads early
  config = function()
    require("onedark").setup({
      style = "darker", -- Options: 'darker', 'warmer', 'cool', 'deep', 'light'
    })
    require("onedark").load()
  end,
}
