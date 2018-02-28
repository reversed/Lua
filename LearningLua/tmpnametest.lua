local tmpfilename = os.tmpname()
print("tmpfilename = " .. tmpfilename)

local myfile = io.open(tmpfilename, "w")
print(myfile)

myfile:write("name=AlbertS\n")
myfile:write("age=22\n")
myfile:close()

local secfile = io.open(tmpfilename, "r")
print(secfile)

local content = secfile:read("*a")
secfile:close()

print("\nfile content is:")
print(content)

local ret = os.remove(tmpfilename)
print("remove file ret:")
print(ret)

