local stringUtils = require 'custom/util/string_util'

---This function takes a file name with muliple extesions i.e: `file.json.tpl`
---And will return the extension in the file name `offset` away from the end.
---For example calling with the file name `file.json.tpl` and an offset of `1` will return `json`
---@param fileName string
---@param offset number
---@return string
local function getMultiExtensionTarget(fileName, offset)
  local parts = stringUtils.split_string(fileName, '/')
  local lastPathPart = parts[#parts]
  local filename_parts = stringUtils.split_string(lastPathPart, '.', true)
  if #filename_parts > 2 then
    -- print(second_to_last_ext)
    return filename_parts[#filename_parts - (offset or 0)]
  end
  error 'file name does not have multiple extensions'
end
return {
  getMultiExtensionTarget = getMultiExtensionTarget,
}
