local function splitString(s, delimiter, usePlainSearch)
  local results = {}
  local startidx = 1
  local from, to = string.find(s, delimiter, startidx, (usePlainSearch or false))
  while from do
    local substring = string.sub(s, startidx, from - 1, (usePlainSearch or false))
    table.insert(results, substring)
    startidx = to + 1
    from, to = string.find(s, delimiter, startidx, (usePlainSearch or false))
  end
  local substring = string.sub(s, startidx)
  table.insert(results, substring)
  return results
end

return {
  splitString = splitString,
}
