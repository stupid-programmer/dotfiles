-- Space is leader, which just means a shortcut to our custom keymaps
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Quickly clear search highlighting.
vim.keymap.set('n', '<leader>k', ':nohlsearch<CR>')

-- Go to previous buffer
vim.keymap.set('n', '<leader>[', ':bprevious<CR>')

-- Go to next buffer
vim.keymap.set('n', '<leader>]', ':bnext<CR>')

-- Close all buffers
vim.keymap.set('n', '<leader>Q', ':bufdo bdelete<CR>')

-- Close current buffer
vim.keymap.set('n', '<leader>w', ':bd<CR>')

-- Toggle Neotree
vim.keymap.set('n', '<leader>1', ':Neotree filesystem toggle<CR>')
vim.keymap.set('n', '<leader>0', ':Neotree reveal<CR>')

-- Keymaps for the lsps that are setup above
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})

-- I always forget the search and replace commands so noting it here 
-- File search and replace, no confirmation
-- :%s/old/new/g
-- File search and replace, with confirmation
-- :%s/old/new/gc
