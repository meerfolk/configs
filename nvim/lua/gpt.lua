local api = vim.api
local buf, win

local function open_window(text)
  vim.cmd('split')
  win = api.nvim_get_current_win()
  buf = api.nvim_create_buf(true, false)

  api.nvim_win_set_buf(win, buf)

  vim.cmd('e ~/temp/temp.gpt')

  local t = {}
  for i in string.gmatch(text, "[^\r\n]+") do
    table.insert(t, i)
  end

  api.nvim_buf_set_lines(buf, 0, -1, false, t)
end

local function main(text)
  open_window(vim.fn.getreg('g'))
end
  
return {
  main = main,
  open_window = open_window
}
