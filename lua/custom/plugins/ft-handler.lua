local mfeh = require 'custom/util/handle_template_file'
-- TODO: come back and claen this up? convert util function to just return expected file type and have the function here set the filetype...
-- TODO: Perhaps export a function to enable this and disable this? that way we can enable it in the init file? Am I overthinking this?
local ftgroup = vim.api.nvim_create_augroup('ftgroup', { clear = true })
vim.api.nvim_create_autocmd({ 'BufEnter', 'BufRead' }, {
  pattern = { '*.*.tpl', '*.*.tftpl' },
  group = ftgroup,
  callback = function(args)
    -- print 'This is a test of ft autocommand'
    mfeh.handleTemplateFileSetFileType(args.buf, args.file)
  end,
})

return {}
