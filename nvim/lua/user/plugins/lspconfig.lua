return {
  {
    -- This handles ensuring the lsp is installed on the system
    "williamboman/mason.nvim",
    config = function()
        require("mason").setup()
    end
  },
  {
    -- All the lsp's available can be seen at this link: https://github.com/williamboman/mason-lspconfig.nvim
    "williamboman/mason-lspconfig.nvim",
    config = function()
        require("mason-lspconfig").setup({
          -- This makes sure the lsp is installed on our system
          -- it goes ahead and installs the lsp if one not found 
          -- it doesn't hook up the lsp to neovim here, just installs 
          ensure_installed = { "lua_ls", "tsserver", "phpactor" }
          -- ensure_installed = { "lua_ls", "tsserver", "intelephense" }
        })
    end
  },
  {
      -- This is the part that links up our lsp server with the neovim client
      -- bridges the gap between the above two plugins
    "neovim/nvim-lspconfig",
    config = function()
        local lspconfig = require('lspconfig')
        lspconfig.lua_ls.setup({})
        lspconfig.tsserver.setup({})
        lspconfig.phpactor.setup({
            handlers = {
                -- These diagnostics don't work well with Laravel, so we just ignore them
                -- not sure how we'd set something nicer up
              ['textDocument/publishDiagnostics'] = function() end
            }
        })
        -- lspconfig.intelephense.setup({
        --     -- Left this here as a reminder theres other settings
        --     on_init = function(client)
		        -- client.server_capabilities.documentFormattingProvider = false
	        -- end,
        --     handlers = {
        --         -- These diagnostics don't work well with Laravel, so we just ignore them
        --         -- not sure how we'd set something nicer up
        --       ['textDocument/publishDiagnostics'] = function() end
        --     }
        -- })
    end
  }
}
