-- This file greets me in tatar

-- Format greeting
local t = os.date("*t")
local greeting = "Хаәрле %s, Камиль"
if t.hour < 3 then
    greeting = string.format(greeting, "тө")
elseif t.hour < 12 then
    greeting = string.format(greeting, "иртә")
elseif t.hour < 17 then
    greeting = string.format(greeting, "көн")
else
    greeting = string.format(greeting, "кич")
end

-- Define a new highlight group (or override the built‐in `Bold`)
vim.cmd([[ 
  highlight MyBold gui=bold cterm=bold
]])

-- Print using that group
vim.api.nvim_echo(
  { { greeting, "MyBold" } }, 
  false, 
  {}
)





