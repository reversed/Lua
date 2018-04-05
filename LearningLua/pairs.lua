--  定义一个table
local tab = {
    35,
    [3] = 45,
    [8] = 101;
    x = 100;
    y = 230;
}

-- 打印查看table
print("\nthe table is", tab)

print("the return value of pairs is", pairs(tab))

print("use pairs result:")
for k,v in pairs(tab) do
    print(k, v)
end

local func, new_tab, key = pairs(tab)
print("change key use pairs result:")
for i,v in func, new_tab, "x" do
    print(i, v)
end

local change_tab = {
    "c",
    "lua"
}

print("change new_tab use pairs result:")
for i,v in func, change_tab, nil do
    print(i, v)
end

