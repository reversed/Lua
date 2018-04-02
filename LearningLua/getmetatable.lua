local aNumber = 100
print("the metatable of a number is", getmetatable(aNumber))

local tab1 = {
    x = 13,
    y = 36
}
local m1 = { z = 36 }
print("m1 is ", m1)

setmetatable(tab1, m1)
print("the metatable of a table tab1 is", getmetatable(tab1))

local tab2 = {
    x = 1,
    y = 3
}
local m2 = {
    z = 28,
    ["__metatable"] = "hehe"
}
print("m2 is ", m2)

setmetatable(tab2, m2)
print("the metatable of a table tab2 is", getmetatable(tab2))
