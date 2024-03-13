-- This is the search plugin
return {
    {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
      dependencies = {
        'nvim-lua/plenary.nvim',
        -- This speeds up the search
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        -- This allows us to search for text in files, requires ripgrep to be installed on the system.
        'nvim-telescope/telescope-live-grep-args.nvim',
      },
      keys = {
        { '<leader>p', function() require('telescope.builtin').find_files() end },
        { '<leader>P', function() require('telescope').extensions.live_grep_args.live_grep_args() end },
      },
      config = function()
          defaults = {
            file_ignore_patterns = { '.git/' },
          }
          pickers = {
            find_files = {
              hidden = true,
            }
          },

      require('telescope').load_extension('fzf')
      end,
  },
  {
    -- This is the plugin that creates the nice ui for code actions (see the lsp setup for those shortcuts)
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
    -- This is your opts table
    require("telescope").setup {
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown {
            -- even more opts
          }

          -- pseudo code / specification for writing custom displays, like the one
          -- for "codeactions"
          -- specific_opts = {
          --   [kind] = {
          --     make_indexed = function(items) -> indexed_items, width,
          --     make_displayer = function(widths) -> displayer
          --     make_display = function(displayer) -> function(e)
          --     make_ordinal = function(e) -> string
          --   },
          --   -- for example to disable the custom builtin "codeactions" display
          --      do the following
          --   codeactions = false,
          -- }
        }
      }
    }
    -- To get ui-select loaded and working with telescope, you need to call
    -- load_extension, somewhere after setup function:
    require("telescope").load_extension("ui-select")
        end
      },
}
