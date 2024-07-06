local mfeh = require 'custom/util/handle_template_file'

local fileName = vim.fn.expand '%'
mfeh.handleTemplateFileSetFileType(fileName)
