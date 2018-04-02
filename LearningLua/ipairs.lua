local tab = {
    23,
    35,
    78,
    [5] = 45,
    [8] = 101,
}

print("the table is ", tab)

print("the return value of ipairs is", ipairs(tab))

print("use ipairs result:")
for k,v in ipairs(tab) do
    print(k, v)
end

local func, new_tab, index = ipairs(tab)
print("change index use ipairs result:")
for i,v in func, new_tab, index+1 do
    print(i, v)
end

local change_tab = {
    "c",
    "lua"
}
print("change new_tab use ipairs result:")
for i,v in func, change_tab, index do
    print(i, v)
end
