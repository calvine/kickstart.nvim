-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
    '3rd/image.nvim', -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', { desc = 'NeoTree reveal' } },
    { '<C-n>', ':Neotree toggle show filesystem left<CR>', mode = 'n', { desc = 'Neotree toggle show filesystem left' } },
    { '<C-m>', ':Neotree toggle show buffers right<CR>', mode = 'n', { desc = 'Neotree toggle show buffers right' } },
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
    default_component_configs = {
      name = {
        use_git_status_colors = true,
      },
      git_status = {
        symbols = {
          added = 'A',
          modified = 'M',
          deleted = 'D',
          renamed = 'R',
        },
      },
    },
  },
}
