local x = 1
local y = 2
local z = 3

local mem1 = collectgarbage("count")
print("init memory is", mem1, "kb")

local local_list = {}
for i=1,100 do
    local v = {}
    for i=1,10 do
        table.insert(v, i*6)
    end
    table.insert(local_list, v)
end

local mem2 = collectgarbage("count")
print("after apply memory is", mem2, "kb")

collectgarbage("collect")

local mem3 = collectgarbage("count")
print("after collect memory is", mem3, "kb")

local_list = nil

collectgarbage("collect")

local mem4 = collectgarbage("count")
print("after collect again memory is", mem4, "kb")
