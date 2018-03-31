local sourcestr = "I am a good person!"
print("sourcestr is : " .. sourcestr)

local first_ret = string.reverse(sourcestr)
print("first_ret is : " .. first_ret)

local second_ret = sourcestr:reverse()
print("second_ret is : " .. second_ret)
