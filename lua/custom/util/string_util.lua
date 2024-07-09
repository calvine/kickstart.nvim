---Returns true is a string is nil or an empty string
---@param s string
---@return boolean
local function string_is_null_or_empty(s)
  return s == '' or s == nil
end

---This function splits a string based on a provided delimiter. If `use_plain_search` is false (or not provided) then the delimiter will leverage pattern matching rather than a plain string search.
---Returns an array of strings.
---@param s string
---@param delimiter string
---@param use_plain_search boolean
---@return table
local function split_string(s, delimiter, use_plain_search)
  local results = {}
  local startidx = 1
  local from, to = string.find(s, delimiter, startidx, (use_plain_search or false))
  while from do
    local substring = string.sub(s, startidx, from - 1)
    table.insert(results, substring)
    startidx = to + 1
    from, to = string.find(s, delimiter, startidx, (use_plain_search or false))
  end
  local substring = string.sub(s, startidx)
  table.insert(results, substring)
  return results
end

return {
  split_string = split_string,
  string_is_null_or_empty = string_is_null_or_empty,
}
