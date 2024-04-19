return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Set header 
    dashboard.section.header.val = {
      "               .:-=+******+=-:.                ",
      "           .-+##################+-.            ",
      "         -*########################*-          ",
      "       -*#############################=        ",
      "     .*################################*.      ",
      "    :####################################-     ",
      "   :############*+++*############*+++*####:    ",
      "   *##########-       -########=       -###    ",
      "  :##########:    .=++-.######-    .=++-.##-   ",
      "  =##########     +****.######     =****:*#+   ",
      "  =##########:    .=+=::######-     -+=::##+   ",
      "  =###########=.     .=########+.     .=###+   ",
      "  =##############*+*##############*+*######+   ",
      "  =########################################+   ",
      "  =########################################+   ",
      "  =########################################+   ",
      "  =########################################+   ",
      "  =########################################+   ",
      "  =########################################+   ",
      "  +########################################+   ",
      "  =######*++##########++*##########++######+   ",
      "  =####+:    +######-    :*######=    -####+   ",
      "  .*#*:       :*##+.       -###+.       +##:   ",
  }

    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button("ee", "  > New File", "<cmd>ene<CR>"),
      dashboard.button("[Space] ee", "  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("[Space] ff", "󰱼  > Find File", "<cmd>Telescope find_files<CR>"),
    }

    -- Set footer
    dashboard.section.footer.val = {}

    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
