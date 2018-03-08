local tL = {
    up = "Lua",
    "c",
    "c++",
    [100] = "end",
    realend = "realend",
    [-1] = "haha"
}

for k, v in pairs(tL) do
    print(k, v)
end
print("LUA ------------- maxn = " ..  table.maxn(tL) .. "\n")

