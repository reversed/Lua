local info =
{
    name = "tom",
    age = 18,
    sex = "man",
}

info.age = 22
info.address = 'china'

print("the info is :")
print(info.name)
print(info.age)
print(info.sex)
print(info.address)

info.address = nil

local mt = {
    __newindex = function(table, key, value)
        print("This is the first time to assign : " .. key .. " = " .. value)
        rawset(table, key, value)
    end
}

setmetatable(info, mt)

info.age = 24
info.address = 'beijing'

print("the info is :")
print(info.name)
print(info.age)
print(info.sex)
print(info.address)

