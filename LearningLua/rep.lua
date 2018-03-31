local sourcestr = "this is a string"
print("sourcestr is : " .. sourcestr)

local first_ret = string.rep(sourcestr, 3)
print("first_ret is : " .. first_ret)

local second_ret = sourcestr
for i=1,2 do
    second_ret = second_ret .. sourcestr
end
print("second_ret is : " .. second_ret)


