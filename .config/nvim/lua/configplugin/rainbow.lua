return function ()
      vim.cmd('syntax on')
      vim.g.rainbow_active = 1
      vim.api.nvim_exec(
      [[
      ]],
      false)
end
