return {
  -- For function signatures hints through LSP
  'ray-x/lsp_signature.nvim',
  tag = 'v0.3.1',
  event = 'VeryLazy',
  opts = {},
  config = function()
    require 'lsp_signature'.setup({
      hint_prefix = ''
    })
  end
}
