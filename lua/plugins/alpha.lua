return {
    "goolord/alpha-nvim",
    opts = function()
        local dashboard = require("alpha.themes.dashboard")
        local logo = [[
      _                            _         ___ 
  ___| |__  _ __ _   _  __ _  __ _(_)_ __   / _ \
/ __| '_ \| '__| | | |/ _` |/ _` | | '_ \ / /_\/
\__ \ | | | |  | |_| | (_| | (_| | | | | / /_\\ 
|___/_| |_|_|   \__,_|\__, |\__, |_|_| |_\____/ 
                      |___/ |___/              

                [ neovim editor ]        
        ]]
        dashboard.section.header.val = vim.split(logo, "\n", { trimempty = true })
        -- dashboard.section.header.val = vim.split(logo, "\n")
        dashboard.section.header.opts.h1 = "AlphaHeader"
        return dashboard
    end,
}
