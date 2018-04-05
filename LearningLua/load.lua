local ret = load("print(\"first test loadstring function.\")")
print("the result ret is", ret)

print("the result of running ret() is:")
ret()

print("the result of running common test is:")
assert(load("print(\"common test load function.\")"))()

local func = load("function func_test(str) print(\"str = \", str) end")
print("before run func, functest =", fun_test)
func()
print("after run func, functest =", func_test, "\n")
func_test("aaa")

assert(load("i = i + 1", "third test"))()



print("\n---------------------------------------------------\n")

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
