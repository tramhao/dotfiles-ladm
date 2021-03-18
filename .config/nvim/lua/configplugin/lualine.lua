return function ()
require "lualine".setup{
      options = {
        theme = 'dracula',
        separator = '|',
        icons_enabled = true,
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch' },
        lualine_c = {
                      {'diagnostics',
                       sources = {'nvim_lsp'},
                       sections = {'error', 'warn', 'info'},
                      },
                      'filename' ,
                    },
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location'  },
        -- lualine_diagnostics = {  }
      },
      inactive_sections = {
        lualine_a = {  },
        lualine_b = {  },
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {  },
        lualine_z = {   }
      }
      -- lualine.extensions = { 'fzf' }
     }
      -- lualine.setup()
end
