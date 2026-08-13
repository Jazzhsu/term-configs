-- treesitter (syntax highlight / indentation)
return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",

  -- Setup
  config = function()
    local config = require('nvim-treesitter.configs')
    config.setup({
      -- ensure_installed = { 'lua', 'javascript', 'java', 'c', 'python' },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
