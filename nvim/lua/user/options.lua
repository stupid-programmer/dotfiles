-- Taken from the Laracasts neovim as a PHP and Javascript IDE series by Jess Archer
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

-- This smart indents the next line of functions for.
vim.opt.smartindent = true

vim.opt.wrap = false

-- This shows the current line number to the left of the cursor.
vim.opt.number = true
-- This shows how many numbers away above (k) or below (j) a line is.
vim.opt.relativenumber = true

-- This is for the menu on autocomplete 
-- vim.opt.wildmode = 'longest:full,full'

-- vim.opt.title = true
vim.opt.mouse = 'a'

-- Enable more colors in the terminal
vim.opt.termguicolors = true

-- Enable spell check
vim.opt.spell = false

-- Ignores lower case for search 
vim.opt.ignorecase = true
-- Enables uppercase for search
vim.opt.smartcase = true

-- Handle invisible characters
vim.opt.list = true
vim.opt.listchars = { tab = '▸ ', trail = '·' }

-- Remove the tilde (~) from end of buffer
vim.opt.fillchars:append({ eob = ' ' })

-- When splitting the windows where to place them
vim.opt.splitbelow = true
vim.opt.splitright = true

-- How much show off screen below and above cursor
vim.opt.scrolloff = 4
vim.opt.sidescrolloff = 4

-- This enables a clipboard system wide
vim.opt.clipboard = 'unnamedplus' -- Use Linux system clipboard

-- Gets rid of scary error when trying to quit without saving, check instead
vim.opt.confirm = true

-- Keeps history of file between terminal sessions
vim.opt.undofile = true

-- When saving a backup file also gets saved just in case
-- Should place inside home directory in hidden file (hopefully)
vim.opt.backup = true
vim.opt.backupdir:remove('.') -- Keep backups out of the current directory

-- This stops the left column from jumping around
vim.opt.signcolumn = 'yes:1'
