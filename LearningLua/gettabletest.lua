information =
{
    name = "tom",
    age = 18,
    sex = "man",
}

local mt = {
    __index = function(table, key)
        print("lua --> get value --> I haven't his field : " .. key)
    end
    ,
    __newindex = function(table, key, value)
        print("lua --> set value --> I haven't this field : " .. key)
        print("lua --> but I do this : " .. key .. " = " .. value)
        rawset(table, key, value)
    end
}

setmetatable(information, mt)

function func_printaddr()
    print("\nlua --> information.address : ")
    print(information.address)
end

