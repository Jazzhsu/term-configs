return {
  "goolord/alpha-nvim",
  dependencies = {
    "echasnovski/mini.icons",
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.theta")

    dashboard.header.val = {
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                     ]],
      [[       ████ ██████           █████      ██                     ]],
      [[      ███████████             █████                             ]],
      [[      █████████ ███████████████████ ███   ███████████   ]],
      [[     █████████  ███    █████████████ █████ ██████████████   ]],
      [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
      [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
      [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
    }

    local db = require("alpha.themes.dashboard")
    dashboard.buttons.val = {
        { type = "text",    val = "Quick links", opts = { hl = "SpecialComment", position = "center" } },
        { type = "padding", val = 1 },
        db.button("e", "  New file", "<cmd>ene<CR>"),
        db.button("SPC s f", "󰈞  Find file"),
        db.button("SPC s g", "󰊄  Live grep"),
        db.button("c", "  Configuration", ":cd ~/.config/nvim<CR>"),
        db.button("u", "  Update plugins", "<cmd>Lazy sync<CR>"),
        db.button("q", "󰅚  Quit", "<cmd>qa<CR>"),
    }

    alpha.setup(dashboard.config)
  end,
}
