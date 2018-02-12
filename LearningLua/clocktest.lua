print("os.clock example :")

local starttime = os.clock()

print(string.format("start time : %.4f", starttime))

-- do something
local sum = 0
for i = 1, 10000000 do
    sum = sum + i
end

local endtime = os.clock()
print(string.format("end time : %.4f", endtime))
print(string.format("cost time : %.4f", endtime - starttime))

