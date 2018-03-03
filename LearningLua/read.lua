local file = io.open("read.txt", "r")
if nil == file then
    print("open file read.txt fail")
end

local year = file:read("*n")
local month = file:read("*n")
local day = file:read("*n")
local hour = file:read("*n")

print("year = " .. year)
print("month = " .. month)
print("day = " .. day)
print("hour = " .. (hour or "nil"))

local content = file:read("*l")
print("\ncontent = " .. content)

local content2 = file:read("*l")
print("content2 = " .. content2)

local zerobyte = file:read(0)
print("\nzerobyte = " .. zerobyte)

local sixbyte = file:read(6)
print("sixbyte = " .. sixbyte)

local readall = file:read("*a")
print("\nreadall = " .. readall)

local readallagain = file:read("*a")
print("readallagain = " .. readallagain)

local reademptyline = file:read("*l")
if reademptyline == nil then
    print("\nread the end of file")
end

local zerobyteagain = file:read(0)
if zerobyteagain == nil then
    print("read the end of file")
end

file:close()
