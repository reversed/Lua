local myfile = io.tmpfile()
print("\nfile handle is :")
print(myfile)

myfile:write("name=aaa\n")
myfile:write("age=22\n")
myfile:write("remove file when the program ends\n")

-- move file pointer to the start
myfile:seek("set")

-- read file content
local content = myfile:read("*a")
myfile:close()

print("\nfile content is:")
print(content)


