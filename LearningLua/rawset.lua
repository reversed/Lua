local tab = {
    66,
    h = 25,
    w = 32,
}

-- define metatable
local mt = {
    __newindex = function(table, key, value)
        print("this is the first time to assign for the field:" .. key .. " = " .. value)
        rawset(table, key, value)
    end
}

tab.h = 999
print("no metatable tab.h =", tab.h)
tab.x = 666
print("no metatable tab.x =", tab.x)

setmetatable(tab, mt)

tab.a = 123
print("have metatable tab.a =", tab.a)
tab.b = 246
print("have metatable tab.b =", tab.b)

rawset(tab, "year", 2016)
print("not use metatable tab.year =", tab.year)
rawset(tab, "date", 1105)
print("not use metatable tab.date =", tab.date)
