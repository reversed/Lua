local aNumber = 100

local tab1 = {
    x = 13,
    y = 36,
}

-- setmetatable(aNumber, tab1)

print("tab1.z =", tab1.z)

local m1 = { z = 36 }
setmetatable(tab1, {__index = m1})
print("tab1.z =", tab1.z)

setmetatable(tab1, nil)
print("tab1.z =", tab1.z)

setmetatable(tab1, {__index = m1, __metatable = 'I have metatable'})
print("tab1.z =", tab1.z)

setmetatable(tab1, {__index = m1})
