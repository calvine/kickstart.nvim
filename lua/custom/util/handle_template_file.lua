local stringUtils = require 'custom/util/string_util'
local function handleTemplateFileSetFileType(fileName)
  local parts = stringUtils.splitString(fileName, '/')
  local lastPathPart = parts[#parts]
  local filename_parts = stringUtils.splitString(lastPathPart, '.', true)
  if #filename_parts > 2 then
    local second_to_last_ext = filename_parts[#filename_parts - 1]
    print(second_to_last_ext)
    vim.bo.filetype = second_to_last_ext
  end
end
-- print 'hello from smarty'
return {
  handleTemplateFileSetFileType = handleTemplateFileSetFileType,
}
