local start_i = 1
local end_j = 1
local substr = ""

local src = "_abcd,1234,%12+-cs"
print("src string is : " .. src)

local function print_ret(findsub, i, j, substr)
    print("\nfind substr \"" .. findsub .. "\" ret:")
    print(">start = " .. (i or "nil"))
    print(">end = " .. (j or "nil"))
    print(">substr = " .. (substr or "nil"))
end

start_i, end_j, substr = string.find(src, "a")
print_ret("a", start_i, end_j, substr)

start_i, end_j, substr = string.find(src, "c")
print_ret("c", start_i, end_j, substr)

start_i, end_j, substr = string.find(src, "c", 10)
print_ret("c", start_i, end_j, substr)

start_i, end_j, substr = string.find(src, "%d", 1, true)
print_ret("%d", start_i, end_j, substr)

start_i, end_j, substr = string.find(src, "%d", 1, false)
print_ret("%d", start_i, end_j, substr)

start_i, end_j, substr = string.find(src, "(%d%d%d)", 1, false)
print_ret("(%d%d%d)", start_i, end_j, substr)
