local utils = {}

function utils.map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- local opts_info = vim.api.nvim_get_all_options_info()
-- local opt = setmetatable({}, {
--   __index = vim.o,
--   __newindex = function(_, key, value)
--     vim.o[key] = value
--     local scope = opts_info[key].scope
--     if scope == "win" then
--       vim.wo[key] = value
--     elseif scope == "buf" then
--       vim.bo[key] = value
--     end
--   end,
-- })

local scopes = {o = vim.o, b = vim.bo, w = vim.wo}

function utils.opt(scope, key, value)
    scopes[scope][key] = value
    if scope ~= 'o' then scopes['o'][key] = value end
end

return utils
