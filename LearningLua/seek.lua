local myfile = io.open("seektest.txt", "w")
if nil == myfile then
    print("open file seektest.txt fail")
end

local beginpos = myfile:seek()
print("file begin pos = " .. beginpos)

local move100 = myfile:seek("cur", 100)
print("after move 100 file pos = " .. move100)

local moveback = myfile:seek("cur", -95)
print("after move back file pos = " .. moveback)
myfile:write("file begin ...")
myfile:write("..............")

myfile:seek("set", 20)
myfile:write("\nthis is insert content\n")

myfile:seek("end", -15)
myfile:write("\nbingo end")

local curfilesize = myfile:seek("end")
print("cur file size = " .. curfilesize)

myfile:seek("end", 10)
myfile:write("test")

local finalfilesize = myfile:seek("end")
print("final file size = " .. finalfilesize)

myfile:seek("set")
myfile:write("haha ")
myfile:close()

myfile = io.open("seektest.txt", "r")
local content = myfile:read("*a")
myfile:close()

print("\nfile content is:")
print(content)
