local tL = {
    "Assembly",
    "Lua",
    "c",
    "c++",
    "swift",
    "java",
    "python",
    "ruby"
}

for k,v in pairs(tL) do
    print(k, v)
end
print("LUA >>>>>>>>>>>>> length : " .. #tL .. "\n")

table.remove(tL)
table.remove(tL)
for k,v in pairs(tL) do
    print(k, v)
end
print("LUA >>>>>>>>>>>>> length : " .. #tL .. "\n")

local ri = table.remove(tL, 3)
for k,v in pairs(tL) do
    print(k, v)
end
print("LUA >>>>>>>>>>>>> length : " .. #tL)
print("LUA >>>>>>>>>>>>> remove item: " .. ri .. "\n")

--[[
local ri = table.remove(tL, 99)
for k,v in pairs(tL) do
    print(k, v)
end
print("LUA >>>>>>>>>>>>> length : " .. #tL)
print("LUA >>>>>>>>>>>>> remove item: " .. (ri or "nil"))
--]]

tL[4] = nil
for k,v in pairs(tL) do
    print(k, v)
end
print("LUA >>>>>>>>>>>>> length : " .. #tL)
