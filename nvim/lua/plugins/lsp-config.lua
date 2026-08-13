return {
  -- mason
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },

  -- mason lspconfig
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "tsserver",
        },
      })
    end,
  },

  -- nvim lspconfig
  {
    "neovim/nvim-lspconfig",

    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.pyright.setup({
        capabilities = capabilities,
      })
      lspconfig.clangd.setup({
        capabilities = capabilities,
      })
      lspconfig.tsserver.setup({
        -- file_types = { "typescript", "typescriptreact", "typescript.tsx" },
        capabilities = capabilities,
      })
      lspconfig.shfmt.setup({
        capabilities = capabilities,
      })
      lspconfig.sqlls.setup({
        capabilities = capabilities,
      })

      require('lspconfig').clangd.setup {
        init_options = {
          fallbackFlags = {'--std=c++17'}
        },
      }

      -- :h lsp-buf to see details.
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
      vim.keymap.set("n", "gi", vim.lsp.buf.incoming_calls, {})
      vim.keymap.set("n", "gI", vim.lsp.buf.outgoing_calls, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
      vim.keymap.set('n', '<leader>ce', vim.diagnostic.open_float)
    end,
  },
}
