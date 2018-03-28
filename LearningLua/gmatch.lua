local str = "12ab34,eed,56"
local func_itor = string.gmatch(str, "%d+")

print("func_itor is", func_itor) 

print("func_itor ret is ", func_itor())

print("func_itor ret is ", func_itor())

-- using loops
local srcstr = "hello world from Lua"
local index = 1
print("\noutput capture using loop:")
for word in string.gmatch(srcstr, "%a+") do
	print(index, word)
	index = index + 1
end

-- find attributes
local attstr = "from=world, to=Lua, name=aaa"
print("\noutput attr pair capture using loop:")
for k,v in string.gmatch(attstr, "(%w+)=(%w+)") do
	print(k, v)
end

local nonumstr = "fadfasd,.;p[];'asd"
local func_numitor = string.gmatch(nonumstr, "%d+")
local numret = func_numitor()
print("\nnumret ret is", numret)
