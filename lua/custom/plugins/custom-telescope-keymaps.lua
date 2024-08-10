-- TODO: add function to get system specific path separator? Does anyone on windows use nvim?
local builtin = require 'telescope.builtin'
local utils = require 'telescope.utils'

vim.keymap.set('n', '<leader>sif', function()
  builtin.find_files {
    cwd = utils.buffer_dir(),
  }
end, { desc = '[S]earch relat[I]ve current dir [F]iles' })

local function generate_additional_sif_commands()
  local target_dir = utils.buffer_dir()
  for var = 1, 9 do
    target_dir = target_dir .. '/..'
    local keymap = '<leader>si' .. var .. 'f'
    local description = '[S]earch relat[I]ve current dir minus [' .. var .. '] [F]iles'
    vim.keymap.set('n', keymap, function()
      builtin.find_files {
        cwd = target_dir,
      }
    end, { desc = description })
  end
end
generate_additional_sif_commands()

vim.keymap.set('n', '<leader>siw', function()
  builtin.grep_string {
    cwd = utils.buffer_dir(),
  }
end, { desc = '[S]earch relat[I]ve current dir [W]ord' })

local function generate_additional_siw_commands()
  local target_dir = utils.buffer_dir()
  for var = 1, 9 do
    target_dir = target_dir .. '/..'
    local keymap = '<leader>si' .. var .. 'w'
    local description = '[S]earch relat[I]ve current dir minus [' .. var .. '] [W]ord'
    vim.keymap.set('n', keymap, function()
      builtin.grep_string {
        cwd = target_dir,
      }
    end, { desc = description })
  end
end
generate_additional_siw_commands()

vim.keymap.set('n', '<leader>sig', function()
  builtin.live_grep {
    cwd = utils.buffer_dir(),
  }
end, { desc = '[S]earch relat[I]ve current dir [G]rep' })

local function generate_additional_sig_commands()
  local target_dir = utils.buffer_dir()
  for var = 1, 9 do
    target_dir = target_dir .. '/..'
    local keymap = '<leader>si' .. var .. 'g'
    local description = '[S]earch relat[I]ve current dir minus [' .. var .. '] [G]rep'
    vim.keymap.set('n', keymap, function()
      builtin.live_grep {
        cwd = target_dir,
      }
    end, { desc = description })
  end
end
generate_additional_sig_commands()

return {}
