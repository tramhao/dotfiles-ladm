return function ()
      vim.g.wiki_root = "~/Sync/wiki"
      vim.g.wiki_filetypes = {"md"}
      vim.g.wiki_write_on_nav = 1
      vim.g.wiki_link_target_type = 'md'
      -- vim.g.wiki_map_link_create = wikilink('text')
      vim.api.nvim_exec(
      [[
      function MyFunction2(text) abort
         return substitute(tolower(a:text), '\s\+', '-', 'g')
      endfunction

      let g:wiki_map_link_create = 'MyFunction2'
      ]],
      false)
end
