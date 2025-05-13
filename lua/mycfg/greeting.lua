-- This file greets me

-- Format greeting
local t = os.date("*t")
local greeting = "Хаәрле %s, Камиль"
if t.hour < 4 then
    greeting = string.format(greeting, "төн")
elseif t.hour < 12 then
    greeting = string.format(greeting, "иртә")
elseif t.hour < 17 then
    greeting = string.format(greeting, "көн")
else
    greeting = string.format(greeting, "кич")
end

print(greeting)




