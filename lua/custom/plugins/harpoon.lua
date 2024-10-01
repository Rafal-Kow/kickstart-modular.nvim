return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },

  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup {}

    vim.keymap.set('n', '<A-a>', function()
      harpoon:list():add()
    end, { desc = '[A]dd to quick list' })
    vim.keymap.set('n', '<A-m>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'show quick [M]enu' })

    vim.keymap.set('n', '<A-h>', function()
      harpoon:list():select(1)
    end, { desc = 'go to 1 Item' })
    vim.keymap.set('n', '<A-j>', function()
      harpoon:list():select(2)
    end, { desc = 'go to 2 Item' })
    vim.keymap.set('n', '<A-k>', function()
      harpoon:list():select(3)
    end, { desc = 'go to 3 Item' })
    vim.keymap.set('n', '<A-l>', function()
      harpoon:list():select(4)
    end, { desc = 'go to 4 Item' })

    vim.keymap.set('n', '<A-p>', function()
      harpoon:list():prev()
    end)
    vim.keymap.set('n', '<A-n>', function()
      harpoon:list():next()
    end)
  end,
}
