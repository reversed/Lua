local ret = string.char()
print("string.char() : " .. ret)

ret = string.char(48)
print("string.char(48) : " .. ret)

print("string.char(48, 49, 50, 65, 97) : " .. string.char(48, 49, 50, 65, 97))

print("string.char(48, 49, 50, 257, 65, 97) : " .. string.char(48, 49, 50, 257, 65, 97))
