-- define a table
local Languages =
{
    "lua",
    "c",
    "c++",
    "java",
    "python",
}
local elementnum = #Languages
print (elementnum)

-- while
print ("while loop result:")
local index = 1
while index <= elementnum do
    print ("[" .. index .. "] = " .. Languages[index])
    index = index + 1
end

-- repeat
print ("repeat loop result:")
local index = 1
repeat
    print ("[" .. index .. "] = " .. Languages[index])
    index = index + 1
until index > elementnum

-- for
print ("for loop result:")
for index = 1, elementnum do
    print ("[" .. index .. "] = " .. Languages[index])
end

-- generic for
print ("generic for loop result:")
for index,value in pairs(Languages) do
    print ("[" .. index .. "] = " .. value)
end

