local information =
{
    name = "AlbertS",
    age = 22,
    married = false,
    test = function() print("test") end,
    weight = 60.2
}

print("phone type:", type(information.phone))
print("name type:", type(information.name))
print("age type:", type(information.age))
print("married type:", type(information.married))
print("test type:", type(information.test))
print("weight type:", type(information.weight))

function isnil(var)
    return type(var) == "nil"
end

function istable(var)
    return type(var) == "table"
end

print("use function:")
if isnil(information.phone) then
    print("information.phone is nil")
end

if istable(information) then
    print("my age is", information.age)
end

