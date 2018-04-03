local n = 0

w = 0

local function test(w)
    n = n + 1
    print("test load function " .. n .. " times")

    if n > 10 then
        return nil
    else
        return "w = w + 1;"
    end
end

print("test function is ", test, "\n")

local retfunc = load(test, "use test")

print("retfunc function is", retfunc)
print("before use function ret func, w = " .. w)
retfunc()
print("after use function ret func, w = " .. w)

local function func_error()
    return "1+1"
end

print("second load", load(func_error, "use func_error"))
