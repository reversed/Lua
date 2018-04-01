--[[
local isplayer = false
assert(isplayer)
--]]

--[[
assert(100 > 99, "that is right")
assert(100 > 199, "compare fail")
--]]

local ret, ret2 = assert(100 > 99, "I can't believe")
print("ret is ", ret, ret2)
