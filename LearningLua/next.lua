local tab = {
    x = 1,
    y = 66,
    [100] = 100,
    [3] = 3,
}

-- 判断表是否为空
local index, value = nil, nil
index, value = next(tab)
if index ~= nil then
    print("table tab is not nil")
end

-- traverse table
print("traverse table result:")
while index ~= nil do
    print("[\"" .. index .. "\"] = " .. value)
    index, value = next(tab, index)
end

index = "x"
index, value = next(tab, index)
print("traverse table again result:")
while index ~= nil do
    print("[\"" .. index .. "\"] = " .. value)
    index, value = next(tab, index)
end

local ret = next(tab, 100)
print("last index test ret is", ret)

local ret = next({}, nil)
print("nil table test ret is", ret)

local ret = next(tab, 1000)
print("error index test ret is", ret)
