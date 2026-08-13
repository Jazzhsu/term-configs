-- which-key (shows key-binding descriptions)
return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },

  config = function()
    local wk = require("which-key")
    wk.add({
      { "<leader>s", group = "search" },
      { "<leader>sf", desc = "find file" },
      { "<leader>sg", desc = "grep" },

      { "<leader>f", desc = "file" },

      { "<leader>u", desc = "undo tree" },

      { "<leader>y", desc = "copy to clipboard", mode = "v" },

      { "<leader>c", group = "code" },
      { "<leader>ca", desc = "code action" },
      { "<leader>ce", desc = "diagnostic" },

      { "<leader>g", group = "format" },
      { "<leader>gf", desc = "format buffer" },

      -- { "g", group = "goto" },
      { "gd", desc = "goto definition" },
      { "gr", desc = "goto references" },
      { "gD", desc = "goto declaration" },
      { "gi", desc = "goto incoming calls" },
      { "gI", desc = "goto outgoing_calls" },
    })
  end
}
