print("math.huge = " .. math.huge)
if 99999999999 < math.huge then
    print("math.huge test")
end

local x = 3
print("math.abs = " .. math.abs(x))
x = -3
print("math.abs = " .. math.abs(x))

x = 3.1
print("math.ceil = " .. math.ceil(x))

x = 3.9
print("math.floor = " .. math.floor(x))


x = 3
local y = 5
print("math.fmod = " .. math.fmod(x, y))
y = -5
print("math.fmod = " .. math.fmod(x, y))
x = -3
y = 5
print("math.fmod = " .. math.fmod(x, y))


x = 6.7
local zs, xs = math.modf(x)
print("math.modf = " .. zs .. ", " .. xs)

x = 3; y = 10; z = 99
print("math.max = " .. math.max(x, y, z))

x = 3; y = -3; z = 32
print("math.min = " .. math.min(x, y, z))


-- random number

local m = 8
local n = 100
print("math.random = " .. math.random())
print("math.random(8) = " .. math.random(m))
print("math.random(8, 100) = " .. math.random(m, n))

m = 9999
math.randomseed(100)
print("math random seed 100")
print("math.random = " .. math.random(m))
print("math.random = " .. math.random(m))
print("math.random = " .. math.random(m))


math.randomseed(1000)
print("math random seed 1000")
print("math.random = " .. math.random(m))
print("math.random = " .. math.random(m))
print("math.random = " .. math.random(m))














