print("now time is " .. os.date())

local function add_num(num1, num2)
    return num1 + num2
end

print("test function add_num result:")
print(pcall(add_num, 3, 5))

print("test function add_num result:")
print(pcall(add_num, 3, "what"))


