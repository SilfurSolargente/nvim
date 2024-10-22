return {
      'xiyaowong/transparent.nvim',
      lazy = false,
      cmd = { 'TransparentEnable', 'TransparentDisable', 'TransparentToggle' },
      enabled = function()
         return vim.env.TERM_PROGRAM == 'WezTerm' or not vim.g.neovide
      end,
      config = function()
         require('transparent').setup({})
         vim.cmd('TransparentEnable')
      end,
   }
