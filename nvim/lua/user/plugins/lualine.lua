-- This is the bottom status bar
return {
    "nvim-lualine/lualine.nvim",
    config = function()
        require('lualine').setup({
            options = {
                theme = 'dracula'
            }
        })
    end
}
