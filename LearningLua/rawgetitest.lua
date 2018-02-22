-- define global table
LanguagesTable =
{
    "lua",
    "c",
    "c++",
    "java",
    "python",
}

function func_printarray()
    print("\n")
    for index, value in pairs(LanguagesTable) do
        print("[" .. index .. "] = " .. value);
    end
end

