return {
  {
  -- mason
  "williamboman/mason.nvim",
  config = function()
    require("mason").setup()
  end
  },
  {
  -- mason-lspconfig
  "williamboman/mason-lspconfig.nvim",
  config = function()
    require("mason-lspconfig").setup({
      ensure_installed = { "lua_ls", "ts_ls", "rust_analyzer", "bashls", "chsarp_ls", "cssls", "harper_ls", "html", "jsonls", "hyprls", "java_language_server", "htmx", "ast-grep" },
    })
  end
  },
  {
  -- lspconfig
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")
    lspconfig.lua_ls.setup({})
    lspconfig.ts_ls.setup({})

    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
    vim.keymap.set({'n'}, '<leader>ca', vim.lsp.buf.code_action, {})
  end
  }
}
