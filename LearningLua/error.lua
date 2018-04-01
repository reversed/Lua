function print_message(str)
    if str == nil then
        error("prompt a erro message, output message is nil", 0)
    end
    print("Lua output : " .. str)
end

print_message("the ret is right!")

--print_message()

function print_error(type)
    error("prompte a error message", type)
end
--print_error(1)

print_error(2)
