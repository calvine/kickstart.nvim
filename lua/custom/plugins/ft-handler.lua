local getMultiExtensionTarget = require('custom/util/handle_template_file').getMultiExtensionTarget
-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'calvine/ft-mapper.nvim',
    -- dir = '/home/calvin/code/nvim-dev/ft-mapper.nvim', -- lua/custom/ft-mapper',
    -- dev = true,
    -- lazy = true,
    opts = {
      {
        name = 'multi-extension-template-file',
        patterns = { '*.*.tpl', '*.*.tftpl' },
        handler = function(bufId, filename)
          local target_type = getMultiExtensionTarget(filename, 1)
          return target_type
        end,
      },
      {
        name = 'terraform',
        patterns = { '*.tf' },
        file_type = 'terraform',
      },
      {
        name = 'mdx_markdown',
        patterns = { '*.mdx' },
        file_type = 'markdown',
      },
    },
  },
}
