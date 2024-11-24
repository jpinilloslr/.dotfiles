return {
  'tpope/vim-fugitive',
  commit = '320b18f',
  config = function()
    vim.keymap.set('n', '<leader>gg', ':G | only<CR>', { desc = '[G]it Fu[g]itive' })
  end
}
