print ("os.date example: \n")
print ("format = \"*t\" result:\n")
local timetable = os.date("*t", os.time())
for i, v in pairs(timetable) do
    print(i, v)
end

print("\nformat start with \"!\" result: \n")
local utimetable = os.date("!*t", os.time())
for i, v in pairs(timetable) do
    print(i, v)
end

print("\nother format result:\n")
print(os.date("today is %c, in %A"))
print(os.date("1060004s is %x", 1060004))
