return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    opts = {
    },
    config = function()
        require("neo-tree").setup({
    window = {
        -- I'm alternating between fullscreen and sidebar so will keep this settingAbout
        -- position = "current",
    },
    filesystem = {
        filtered_items = {
              visible = true,
              hide_dotfiles = false,
              hide_gitignored = true,
        },
    }
    })
    end
}
