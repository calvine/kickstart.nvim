function visual_git_history()
  -- TODO: find a way to preserve visual mode?
  local mode = vim.api.nvim_get_mode()
  vim.print(unpack(mode))
  vim.print(mode.mode)
  if mode.mode ~= "v" and mode.mode ~= "V" then
    vim.print("not in visual mode... bailing")
    return
  end

  local line1 = vim.fn.line("v")
  vim.print("start line: " .. line1)
  local line2 = vim.fn.line(".")
  vim.print("end line: " .. line2)
  if line1 > line2 then
    local tmp = line1
    line1 = line2
    line2 = tmp
  end
  local filename = vim.api.nvim_buf_get_name(0)
  vim.print("filename: " .. filename)
  local cmd = ":Git log -L " .. line1 .. "," .. line2 .. ":" .. filename .. "<CR>"
  vim.print(cmd)
  local command_keys = vim.api.nvim_replace_termcodes(cmd, true, false, true)
  vim.api.nvim_feedkeys(command_keys, 'n', false)
end

vim.keymap.set('v', "<leader>gl", visual_git_history, { desc = "[Git] [L]og for selected lines" })

return {}
