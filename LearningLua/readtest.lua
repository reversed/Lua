local file = io.open("readtest.txt", "r")
if nil == file then
    print("open file readtest.txt fail")
end

-- read numbers
local year = file:read("*n")
local month = file:read("*n")
local day = file:read("*n")
local hour = file:read("*n")

print("year = " .. year)
print("month = " .. month)
print("day = " .. day)
print("hour = " .. (hour or "nil"))

-- read lines
local content = file:read("*l")
print("\ncontent = " .. content)

local content2 = file:read("*l")
print("content2 = " .. content2)

-- read 0 byte
local zerobyte = file:read(0)
print("\nzerobyte = " .. zerobyte)

-- read 6 bytes
local sixbyte = file:read(6)
print("sixbyte = " .. sixbyte)

-- read all
local readall = file:read("*a")
print("\nreadall = " .. readall)

-- read all again
local readallagain = file:read("*a")
print("readallagain = " .. readallagain)

-- read empty line
local reademptyline = file:read("*l")
if reademptyline == nil then
    print("\nread the end of file")
end

-- zero byte again
local zerobyteagain = file:read(0)
if zerobyteagain == nil then
    print("read the end of file")
end

file:close()
