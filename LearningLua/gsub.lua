x = string.gsub("hello world", "(%w+)", "lua")
print(x)

x = string.gsub("hello world", "(%w+)", "%1 %1")
print(x)

x = string.gsub("hello world", "(%w+)", "%0 %0", 1)
print(x)

x = string.gsub("hello world from c to lua", "(%w+) (%a+)", "%0 %2")
print(x)

x = string.gsub("os = $HOME, pathext = $USER", "%$(%w+)", os.getenv)
print(x) 

x = string.gsub("4 + 5 = $return 4+5$", "%$(.-)%$", function(s)
    return load(s)() end)
print(x)

local t = {name="lua", version="5.1"}
x = string.gsub("$name-$version.tar.gz", "%$(%w+)", t)
print(x)
