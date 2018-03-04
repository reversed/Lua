local file = io.open("writetest.txt", "w")
if nil == file then
    print("open file writetest.txt fail")
end

file:write("test io.write\n")

file:write(2016)

file:write(" ")

file:write(tostring(os.date()))
file:write("\n")
file:write(tostring(file))

file:close()

local fileread = io.open("writetest.txt", "r")

local content = fileread:read("*a")
print("file content is : \n")
print(content)

fileread:close()

