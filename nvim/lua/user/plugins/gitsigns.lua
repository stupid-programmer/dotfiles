-- This is a plugin to show git changes in the gutter of the file
return {
  'lewis6991/gitsigns.nvim',
  lazy = false,
  keys = {
    { '<leader>gp', ':Gitsigns preview_hunk<CR>'},
    { '<leader>gb', ':Gitsigns blame_line<CR>'},
    { '<leader>gh', ':Gitsigns next_hunk<CR>'},
    { '<leader>gH', ':Gitsigns prev_hunk<CR>'},
    -- Lets not change anything in git from here yet but these are some options
    -- { '<leader>gs', ':Gitsigns stage_hunk<CR>'},
    -- { '<leader>gS', ':Gitsigns undo_stage_hunk<CR>'},
  },
  opts = {
    signs = {
      add          = { text = '│' },
      change       = { text = '│' },
      delete       = { text = '_' },
      topdelete    = { text = '‾' },
      changedelete = { text = '┄' },
      untracked    = { text = '┊' },
    },
  },
}
