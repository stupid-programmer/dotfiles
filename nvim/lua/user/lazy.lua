local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("user.plugins")

-- This is the other way of loading in plugin configs
 -- require("lazy").setup({
 --     { import = 'user.plugins.vim-commentary' },
 -- })

-- require("lazy").setup({
 --    { import = 'user.plugins.nvim-autopairs' },
-- })
