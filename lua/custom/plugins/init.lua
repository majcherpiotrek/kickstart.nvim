-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more informationinit

-- Enable syntax highlighting for *.templ files
vim.api.nvim_create_autocmd('BufEnter', {
  pattern = '*.templ',
  callback = function()
    vim.cmd 'TSBufEnable highlight'
  end,
})

-- Trigger method signature help
vim.keymap.set('n', '<C-p>', vim.lsp.buf.signature_help, { noremap = true })
vim.keymap.set('i', '<C-p>', vim.lsp.buf.signature_help, { noremap = true })

-- Keep cursor on the center of the screen when scrolling
vim.keymap.set('n', '<C-d>', '<C-d>zz', { noremap = true })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { noremap = true })

-- Center the searched phrase and unfold possible folds
vim.keymap.set('n', 'n', 'nzzzv', { noremap = true })
vim.keymap.set('n', 'N', 'Nzzzv', { noremap = true })

-- The vim-tmux-navigator handles this remapping now
--vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
--vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
--vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
--vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

return {
  'mfussenegger/nvim-jdtls',
  require 'custom.plugins.nvim-ts-autotag',
  require 'custom.plugins.vim-tmux-navigator',
  require 'custom.plugins.git-conflict',
}
