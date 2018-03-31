local sourcestr = "ehrt999wj=--=-*-/4mdqwl\0ds123tfef"
print("\nsourcestr = "..string.format("%q",sourcestr))

local match_ret = string.match(sourcestr, "%z")
print("%z match_ret is ", string.format("%q", match_ret))

match_ret = string.match(sourcestr, "%a*")
print("%a match_ret is ", string.format("%q", match_ret))

match_ret = string.match(sourcestr, "%a%d-")
print("%a%d- match_ret is ", string.format("%q", match_ret))

match_ret = string.match(sourcestr, "%bhs")
print("%bhs match_ret is ", string.format("%q", match_ret))

local match_ret1, match_ret2 = string.match(sourcestr, "()t9()")
print("()t9() match_ret is ", match_ret1, match_ret2)
