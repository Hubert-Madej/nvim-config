return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        -- Supported LS's: https://github.com/williamboman/mason-lspconfig.nvim
        ensure_installed = { "lua_ls", "ts_ls", "gopls", "clangd", "pylsp" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      local lspconfig = require("lspconfig")

      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })

      lspconfig.ts_ls.setup({
        capabilities = capabilities
      })

      lspconfig.gopls.setup({
        capabilities = capabilities
      })

      lspconfig.clangd.setup({
        capabilities = capabilities
      })

      lspconfig.pylsp.setup({
        capabilities = capabilities,
        settings = {
          pylsp = {
            plugins = {
              pycodestyle = {
                maxLineLength = 120
              }
            }
          }
        }
      })

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
      vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, {})
    end
  },
}
