LuaguagesTable =
{
    "lua",
    "c",
    "c++",
    "java",
    "python",
}

function func_printarray()
    for index, value in pairs(LuaguagesTable) do
        print("lua --> [" .. index .. "] = " .. value)
    end
    print("\n")
end

