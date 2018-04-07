local wait_list = {
    a = 13,
    b = "36",
    c = "52s",
    d = false,
    e = function() print("e") end,
}

print("wait_list.a =", tostring(wait_list.a))
print("wait_list.b =", tostring(wait_list.b))
print("wait_list.a =", tostring(wait_list.c))
print("wait_list.b =", tostring(wait_list.d))
print("wait_list.a =", tostring(wait_list.e))
print("wait_list.b =", tostring(wait_list.f))

print("======================================")
print("wait_list=", tostring(wait_list))
setmetatable(wait_list, {__index = {g = "index"}})
print("wait_list=", tostring(wait_list))

print("wait_list.g =", tostring(wait_list.g))

setmetatable(wait_list, {__tostring = function (param)
    return "this is a table named wait_list!"
end})
print("wait_list =", tostring(wait_list))
