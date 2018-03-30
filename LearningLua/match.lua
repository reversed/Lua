local sourcestr = "ehre99wj=--=-*-/4mdqwl\0ds123fef"
print("\nsourcestr = "..sourcestr)

local match_ret = string.match(sourcestr, "%d%d%d")
print("match_ret is " .. match_ret)

match_ret = string.match(sourcestr, "%d%a%a")
print("match_ret is " .. match_ret)

match_ret = string.match(sourcestr, "")
print("match_ret is " .. match_ret)

match_ret = string.match(sourcestr, "%d%d")
print("match_ret is " .. match_ret)

match_ret = string.match(sourcestr, "%d%d", 10)
print("match_ret is " .. match_ret)
