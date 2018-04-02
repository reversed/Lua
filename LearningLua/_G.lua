print("print_message = ", tostring(_G["print_message"]))

function print_message(str)
    print("Lua output : " .. str)
end

print("print_message = ", tostring(_G["print_message"]))

local func = _G["print_message"]
func("print_message function is exist!")

local function local_name()
    print("Lua output : this is local function")
end

print("local_name = ", tostring(_G["local_name"]))

_G["local_name"] = local_name

_G["local_name"]()

