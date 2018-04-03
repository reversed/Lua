print("before loadfile print_func1 is", print_func1)

local func = loadfile("loadfileinput.lua")

print("after loadfile print_func1 is", print_func1)

print("func is", func)

print("func() run result is", func())

print("after func print_func1 is", print_func1)

print("print_func1() run result is:")
print_func1("running print_func1")

print("after func print_func2 is", print_func2)
