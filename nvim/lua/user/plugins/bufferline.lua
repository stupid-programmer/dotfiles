-- These are the tabs above this very comment
return {
  'akinsho/bufferline.nvim',
  dependencies = 'nvim-tree/nvim-web-devicons',
  opts = {
    options = {
      offsets = {
        {
          filetype = 'neo-tree',
          text = '  Files',
          highlight = 'StatusLine',
          text_align = 'left',
        },
      }
    }
  }
}
