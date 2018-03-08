local tL = {
    start = "Assembly",
    up = "Lua",
    "c",
    "c++",
    "swift",
    "java",
    [8] = "test",
    [100] = "end"
}

print("====================================== PART 1:")

for k, v in pairs(tL) do
    print(k, v)
end
print(">>>> length = " .. #tL .. "\n")

table.insert(tL, 3, "objective-c")

for k, v in pairs(tL) do
    print(k, v)
end
print(">>>> length = " .. #tL .. "\n")

table.insert(tL, "python")
table.insert(tL, "ruby")

for k, v in pairs(tL) do
    print(k, v)
end
print(">>>> length = " .. #tL .. "\n")
