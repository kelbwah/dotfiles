return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local lualine = require("lualine")
        -- local lazy_status = require("lazy.status")
        local lualine_theme = require("lualine.themes.base16")

        lualine.setup({
            options = {
                theme = lualine_theme,
            },
            --[[ sections = {
                lualine_x = {
                    lazy_status.updates,
                    cond = lazy_status.has_updates,
                    color = { fg = "ff9e64" },
                },
                { "encoding" },
                { "fileformat" },
                { "filetype" },
            } ]]
        })
    end,
}
