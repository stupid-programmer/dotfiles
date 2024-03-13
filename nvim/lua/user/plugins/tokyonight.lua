return {
  'folke/tokyonight.nvim',
  lazy = false,
  priority = 1000,
  opts = { 
      styles = {
        comments = { italic = true },
      }
  },
  config = function (plugin, opts)
    require('tokyonight').setup(opts)

    vim.cmd('colorscheme tokyonight')
  end,
}
