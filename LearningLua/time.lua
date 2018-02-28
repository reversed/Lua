local nowtime = os.time()
print("nowtime = " .. nowtime)

local exampletime = os.time({year=2008, month=8, day=8, hour=20, min=0, sec=0})
print("exampletime = " .. exampletime)

local origintime = os.time({year=1970, month=1, day=1, hour=8, min=0, sec=0})
print("origintime = " .. origintime)

local errortime = os.time({year=1970, month=1, day=1, hour=0, min=0, sec=0})
print("errortime = " .. (errortime or "nil"))
