function custom_func(n1, n2)
    local ret = n1 + n2
    print("n1 = " .. n1)
    print("n2 = " .. n2)
    print("n1 + n2 = " .. ret)
end

local func_content = string.dump(custom_func)
print("func_content = " .. func_content)

local outfile = io.open("dumptest.txt", "w")
outfile:write(func_content)
outfile:close()

local infile = io.open("dumptest.txt", "r")
local incontent = infile:read("*a")
infile:close()
print("input content is " .. incontent)

local myfunc = load(incontent)

myfunc(1,1)
myfunc(3,6)

myfunc("7", ".7")
