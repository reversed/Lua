local wait_list = {
    a = 13,
    b = "36",
    c = "52s",
    d = false,
    e = function() print("e") end,
    f = 32,
    g = "A3",
}

print("wait_list.a =", tonumber(wait_list.a))
print("wait_list.b =", tonumber(wait_list.b))
print("wait_list.b =", tonumber(wait_list.c))
print("wait_list.b =", tonumber(wait_list.d))
print("wait_list.b =", tonumber(wait_list.e))

print("wait_list.f(2) =", tonumber(tostring(wait_list.f), 2))
print("wait_list.f(4) =", tonumber(tostring(wait_list.f), 4))
print("wait_list.f(8) =", tonumber(tostring(wait_list.f), 8))
print("wait_list.g(10) =", tonumber(tostring(wait_list.g), 10))
print("wait_list.g(16) =", tonumber(tostring(wait_list.g), 16))
print("wait_list.g(32) =", tonumber(tostring(wait_list.g), 32))
