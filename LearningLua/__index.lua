local information = 
{
    name = "tom",
    age = 18,
    sex = "man",
}

print("the information is :")
print(information.name)
print(information.age)
print(information.sex)
print(information.address)

local mt =
{
    __index = function(table, key)
        print("I haven't this field : " .. key);
    end
}

setmetatable(information, mt)
print("\nafter set __index, the information is :")
print(information.name)
print(information.age)
print(information.sex)
print(information.address)

