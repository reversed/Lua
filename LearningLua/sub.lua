-- 显示源字符串
local sourcestr = "prefix--de asdsdjjj\0dsfdf56\0mfa54--suffix"
print("\nsourcestr is", string.format("%q", sourcestr))

local first_sub = string.sub(sourcestr, 4, 25)
print("first_sub is ", string.format("%q", first_sub))

local second_sub = string.sub(sourcestr, 1, 8)
print("second_sub is ", string.format("%q", second_sub))

local third_sub = string.sub(sourcestr, -10)
print("third_sub is ", string.format("%q", third_sub))

local fourth_sub = string.sub(sourcestr, -100)
print("fourth_sub is ", string.format("%q", fourth_sub))
