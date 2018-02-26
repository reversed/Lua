local tab = { year=2008, month=8, day=8, hour=20 }
local pretime = os.time(tab)
print(os.date("08 Olympic Games time is %x", pretime))

local timetable = os.date("*t");
local nowtime = os.time(timetable)
print(os.date("now time is %c", nowtime))

local difft = os.difftime(nowtime, pretime);
print("from 08 Olympic Games to now cost time " .. difft .. "s")
