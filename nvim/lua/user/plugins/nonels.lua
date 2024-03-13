-- This is for formatting, it access the tools for the lanugages
-- it is the replacement for none-ls which is why that is referenced a lot
return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                -- Not convinced I understand this but
                -- This means we can call the formatting tools from null_ls
                -- stylelua is wrapped in a lsp whose funcitons we can call
                -- stylua needs install via the :Mason command manually
                --
                -- To install these type the command :Mason
                -- then go to formatter or linter
                -- search and when over the one you want press i
                -- then add to the bellow config
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.prettier,
                null_ls.builtins.formatting.pint,

                null_ls.builtins.diagnostics.eslint_d,

                vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
            }
        })
    end

}
