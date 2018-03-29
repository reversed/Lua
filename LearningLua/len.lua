local sourcestr = "This is a rainy day!"
local sourcelen = string.len(sourcestr)
print("the len of sourcestr is " .. sourcelen)

local str = "hello lua \000 What?"
local strlen = string.len(str)
print("the len of str is " .. strlen)

local strlen_new = str:len()
print("the len of str is " .. strlen_new)

