return {
  'folke/which-key.nvim',
  commit = '68e37e1',
  dependencies = {
    {
      'nvim-tree/nvim-web-devicons',
      commit = 'f09be61'
    },
    {
      'echasnovski/mini.nvim',
      commit = 'ccfc630'
    }
  },
  config = function()
    local wk = require('which-key')
    wk.add({
      { '<leader>c',  group = '[C]ode' },
      { '<leader>d',  group = '[D]ebug' },
      { '<leader>g',  group = '[G]it' },
      { '<leader>h',  group = 'Git [H]unk', mode = 'n' },
      { '<leader>h',  group = 'Git [H]unk', mode = 'v' },
      { '<leader>l',  group = '[L]SP' },
      { '<leader>n',  group = '[N]otifications' },
      { '<leader>s',  group = '[S]earch' },
      { '<leader>t',  group = '[T]oggle' },
      { '<leader>T',  group = '[T]ests' },
      { '<leader>w',  group = 'S[w]ap' },
    }
    )
  end
}
