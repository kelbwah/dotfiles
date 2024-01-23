return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Set header 
    dashboard.section.header.val = {
      "                                              ›íí›",        
      "                      ›{zÏÏüÏüÏüÏüÏÏz{›     {ÏÏÏí›",        
      "                 ›—zÏüÏzí{—›› ››››—{{zÏÏüÏÏüÏz—   ",        
      "               ›zÏüÏ—                    —{—      ",        
      "             ›íüÏí›          ›—{{íí{{——›          ",        
      "            {ÏüÏ›        ›zÏüÏÏíí{{ííÏÏüÏÏí›      ",        
      "           zÏüz›       ›ÏÏÏí›           ›zÏüÏ—    ",        
      "         ›zÏüÏ—       {ÏÏz›                {Ïüz›  ",        
      "         ÏÏüÏz›       zÏÏ—        íÏüÏ—     —ÏÏz› ",        
      "       —ÏüzÏüÏ—       {ÏÏí         ›ÏÏÏ      íÏÏ{ ",        
      "      {Ïüí›—Ïüí        {ÏüÏí—›   ›íÏüÏ›      {ÏÏ{ ",        
      "    ›züÏ{   íÏÏ{         ›ízÏÏÏÏÏÏÏz›       ›züÏ— ",        
      "  ›zÏÏí›     {Ïüí›                         ›züÏ—  ",        
      "›ÏÏüz›        ›ÏÏÏí                      —ÏüÏí    ",        
      "{zÏÏÏzí{—››     ›íÏÏÏz{—›          ›—{íÏüÏz{›     ",        
      "   ››—ízüÏüÏÏÏÏÏÏzzÏÏüÏÏüÏÏÏÏÏÏÏÏÏÏüÏÏí—›         ",        
      "             ››——{{{íííííí{{{——››                 ",        
      "                                                  ",
    }

    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button("ee", "  > New File", "<cmd>ene<CR>"),
      dashboard.button("[Space] ee", "  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("[Space] ff", "󰱼  > Find File", "<cmd>Telescope find_files<CR>"),
    }

    -- Set footer
    dashboard.section.footer.val = {
       "                                                  ",
       "                                                  ",
       "                                                  ",
       "\"𝐼𝓉 𝒾𝓈 𝒻𝑜𝑜𝓁𝒾𝓈𝒽 𝓉𝑜 𝒻𝑒𝒶𝓇 𝓌𝒽𝒶𝓉 𝓌𝑒 𝒽𝒶𝓋𝑒 𝓎𝑒𝓉 𝓉𝑜 𝓈𝑒𝑒 𝒶𝓃𝒹 𝓀𝓃𝑜𝓌\" - 𝐼𝓉𝒶𝒸𝒽𝒾",
       "                                                  ",
       "                                                  ",
    }

    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
