-- Telescope
return {
  -- telescope
  {
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.8',
    dependencies = { 
      'nvim-lua/plenary.nvim' 
    },

    -- Setup
    -- :checkhealth telescope
    -- require ripgrep, fd-find
    config = function()
      -- :checkhealth telescope
      -- require ripgrep, fd-find
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>sf', builtin.find_files, {})
      vim.keymap.set('n', '<leader>sg', builtin.live_grep, {})
    end
  },

  -- ui select
  {
    'nvim-telescope/telescope-ui-select.nvim',

    config = function()
      -- This is your opts table
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }
          }
        }
      }
      -- To get ui-select loaded and working with telescope, you need to call
      -- load_extension, somewhere after setup function:
      require("telescope").load_extension("ui-select")
    end
  },
}
