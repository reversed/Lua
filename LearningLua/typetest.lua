-- define a global table
information = 
{
    name = "aaa",
    age = 22,
    married = false,
}

function func_printtable()
    print("\nlua --> table element: ")
    for index, value in pairs(information) do
        print("information." .. index .. " = " .. tostring(value))
    end
end

