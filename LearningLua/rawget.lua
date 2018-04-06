local tab = {
    66,
    11,
    h = 25,
    w = 32,
}

local mt = { x = 77, y = 78, h = 9 }

print("no metatable tab.h =", tab.h)
print("no metatable tab.x =", tab.x)

setmetatable(tab, {__index = mt})

print("have metatable tab.h =", tab.h)
print("have metatable tab.x =", tab.x)

print("rawget tab.h =", rawget(tab, "h"))
print("rawget tab.x =", rawget(tab, "x"))

