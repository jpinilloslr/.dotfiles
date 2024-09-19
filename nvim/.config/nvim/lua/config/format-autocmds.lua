-- [[ Auto format on save ]]
_G.autoformat_enabled = true

function _G.toggle_autoformat()
  _G.autoformat_enabled = not _G.autoformat_enabled
  local status = _G.autoformat_enabled and "enabled" or "disabled"
  vim.notify("Autoformatting is " .. status, vim.log.levels.INFO, { title = "Toggle Autoformat" })
end

vim.api.nvim_set_keymap('n', '<Leader>tf', ':lua toggle_autoformat()<CR>',
  { noremap = true, silent = true, desc = '[T]oogle Auto[f]ormat' })

-- Neoformat configuration for SCSS files with prettier
-- Neoformat is using CSS parser by defualt for SCSS files,
-- so we specify the parser explicitly.
vim.g.neoformat_enabled_scss = {'prettier'}
vim.g.neoformat_scss_prettier = {
    exe = 'prettier',
    args = {'--parser', 'scss'},
    stdin = 1
}
vim.g.neoformat_enabled_python = {'black'}

vim.cmd([[
  autocmd BufWritePre *.py if luaeval('_G.autoformat_enabled') | Neoformat | endif
  autocmd BufWritePre *.js,*.ts,*.mjs,*.mts,*.jsx,*.tsx if luaeval('_G.autoformat_enabled') | Neoformat | endif
  autocmd BufWritePre *.go if luaeval('_G.autoformat_enabled') | Neoformat | endif
  autocmd BufWritePre *.css,*.scss if luaeval('_G.autoformat_enabled') | Neoformat | endif
  autocmd BufWritePre *.html,*.htm,*.md if luaeval('_G.autoformat_enabled') | Neoformat | endif
  autocmd BufWritePre *.json if luaeval('_G.autoformat_enabled') | Neoformat | endif
  autocmd BufWritePre *.yml,*.yaml if luaeval('_G.autoformat_enabled') | Neoformat | endif
  autocmd BufWritePre *.graphql,*.gql if luaeval('_G.autoformat_enabled') | Neoformat | endif
]])
