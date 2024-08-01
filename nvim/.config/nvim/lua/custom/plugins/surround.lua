return {
  'kylechui/nvim-surround',
  event = { 'BufReadPre', 'BufNewFile' },
  version = '*', -- Use for stability; omit to use main branch
  config = function()
    require('nvim-surround').setup {
      -- Configuration here, or leave empty to use defaults
      --
      -- Link for some use cases and key bindings: https://github.com/kylechui/nvim-surround?tab=readme-ov-file#rocket-usagg
    }
  end,
}
