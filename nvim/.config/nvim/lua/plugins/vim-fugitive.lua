return {
  'tpope/vim-fugitive',
  commit = 'd4877e5',
  config = function()
    vim.keymap.set('n', '<leader>gg', ':G | only<CR>', { desc = '[G]it Fu[g]itive' })
  end
}
