local contentfunc = io.lines("linestest.txt")
print("contentfunc is :")
print(contentfunc)

print("\nfirst file content is :")
local content = contentfunc()
print(content .. "\n")

content = contentfunc()
print(content .. "\n")

for cnt in contentfunc do
    print(cnt)
end

print("\n second file content is :")
for cnt in io.lines("linestest.txt") do
    print(cnt)
end

print("\nthird file content is :")
local myfile = io.open("linestest.txt")
for cnt in myfile:lines() do
    print(cnt)
end

myfile:close()
