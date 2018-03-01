local file = io.open("iotest.txt", "r")
print("\nopen a file:")
print(file)

local ret = io.close(file)
print("\nclose file ret:")
print(ret)

local filenew = io.open("iotest.txt", "r")
print("\n\nopen a file again:")
print(filenew)

local retagain = filenew:close()
print("\nclose file again ret:")
print(retagain)

io.output("iotest.txt")
local outret = io.close()

-- io.input("iotest.txt")
-- local inret = io.close()
