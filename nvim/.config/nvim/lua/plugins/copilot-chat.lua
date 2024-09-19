return {
  'CopilotC-Nvim/CopilotChat.nvim',
  tag = 'v2.14.1',
  dependencies = {
    { 
      'nvim-lua/plenary.nvim',
      commit = 'f4faa5a',
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
