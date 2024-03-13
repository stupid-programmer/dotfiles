-- Highlight and indent, might want to revist this see if its worth it but set up for now
return {
  'nvim-treesitter/nvim-treesitter',
  config = function()
    require("nvim-treesitter.configs").setup({
      -- When tree sitter see's a file it doesn't know it will install that linter
      -- the linter talks through a generic lsp to the client for formatting
      auto_install = true,
      highlight = { enabled = true },
      indent = { enabled = true }
  })
  end
}
