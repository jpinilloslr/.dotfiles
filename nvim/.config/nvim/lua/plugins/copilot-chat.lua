return {
  'CopilotC-Nvim/CopilotChat.nvim',
  tag = 'v3.1.0',
  dependencies = {
    { 
      'nvim-lua/plenary.nvim',
      commit = '2d9b061',
    },
  },
  opts = {
    question_header = '## Me ',
    answer_header = '## GLaDOS ',
    auto_follow_cursor = false,
    show_help = false,
    window = {
      layout = 'float',
      width = 0.8,
      height = 0.7,
      title = 'GLaDOS',
    },
    mappings = {
      reset = {
        normal = '<C-c>',
        insert = '<C-c>',
      },
    }
  },
}
